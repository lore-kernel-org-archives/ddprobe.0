Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E59320A00
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779246034; cv=none; b=QLl/4LWiMzIIpzi6ljr4o5r8J5pDiSFrtNi8OohPLIjCiXg/2yNerqdMGcpU9hPuZl4U/PTKM2vmMyCgL7945FdKBVevQoQYUONBSyrel0qv2+vq+ncGtt0TPHUkUFCNpI1fBRA57o+4mnUgTc3SQwcLDJPth6Kbf9cPOlG9zs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779246034; c=relaxed/simple;
	bh=eG79O03Ooipx/+6NPvQKJnv/vuAUnYR42+A8PphxJIY=;
	h=To:Subject:From:Message-Id:Date; b=LKX87N4U0sdCl/SlJV9+W5LM9dVkCixiO1YJsFu2/qZegcYNNOc5Elo1fzW7uBUCOxaICLHrNFlwu74P0zBssD12QxvYwLnQlGCNiV7k1X4V+piZk5sYVUhT0CSDV7UXy3I8DAit0H42FIgAa6gJMrvEf4oKD/nWy1maYf+RD9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhFMh29h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhFMh29h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C663CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779246033;
	bh=eG79O03Ooipx/+6NPvQKJnv/vuAUnYR42+A8PphxJIY=;
	h=To:Subject:From:Date:From;
	b=IhFMh29hKAlhUDdzqYda+jcMJ4nYUc3UKUkpwi6MZF1QKfHn2KBXibNLGBGoFxEVO
	 JfOWF7MaQVIKOgkGDyw2+brtLfxa4Zhfr3+FWhlOo6qvFHiuYecEW7iHMzFEfLDd6L
	 PRDQXx+tPjF1w/nXQ6AQBpGxSCyqjaJeNgd8++aX+Gf1VBYSTmepUSlxR1S6JAnQuY
	 AzEaB2PEnbNplTm/eEdagw5VW5XcAkXAtyl7wCIvkR0MqDHhakmwHO2eIg/XkmVyKT
	 1U10R5F/ywYnEAYnkUpORZkY4A2Nvxu32N7Mat82Xz/7PhkL+VRZhnxxG3V04JPtKg
	 tOa05LcDD67tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC93CD4F5B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924603369.26967.12946799534371449696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c002da1e9f8fb1bd182f4c16014fb439434a394f4337bbee0ec5d2f0f5735b
Date: Wed, 20 May 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779246033
