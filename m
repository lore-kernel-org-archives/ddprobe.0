Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A29121D5B8
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742200796; cv=none; b=kawmUiC2EnNSHlS2iiYy/zSe0YFqPtzL+U1vxK2PVoQKcLUbULfDt/RE3B7dJWZEsX4E47GC3dXn7/dcKzOJw9eVSyqRROBy0D2A5TXsfB8WnDtducQ6J0Q75QXHGCKPlis017VkqUczqH/jaeQQmRDMSqz/H20G2m+7wRdcFyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742200796; c=relaxed/simple;
	bh=GA8B86fZEG00ZRhYlRi9wSQQ+xYV5JJRKRVaQWfhaWI=;
	h=To:Subject:From:Message-Id:Date; b=r3DjNQ1gRBcHSj/hiiRTI5/A41jfGiljQFtCK13oEKqBExI6xx/aIYDnyJuNrSXDem6yA+29IQxU2As4xpOVzYEW3TP/X1Ja+aZREEFFSHyWT1ZdcOizVk1dNuuMtTeqYiwvWuy9Ir1tX7lh4npnYjjealLgYDraF2kcUWx0RVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsqgacUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsqgacUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF832C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742200793;
	bh=GA8B86fZEG00ZRhYlRi9wSQQ+xYV5JJRKRVaQWfhaWI=;
	h=To:Subject:From:Date:From;
	b=PsqgacUkcEHUUVZTohyRGI8oIcDwSmKGxY7NHiDhEkrwsWLQ7Qd721HzVuaOzDNCL
	 NZFY48G+f1RLHuMgY71+5T3g6QmmMXr+T4C+uk4vVIWp/BboQjcEnfufUVph/1WKS8
	 wcBpxp5X7BVIUfiKlI6JSbdY3OFwRHuXHlK9eMYEaPci1tV4kfacdWumWufrLWvNFF
	 7+fop61nLHDORH/705CSgQ0apj67yFIK9pJ0YpvfjOjUgAZTis+sDhTLT02/mC5Shh
	 pTSiBdyBRKjC+GmUNz+aoq+elE+8KrlOsGItNY9ELwltz3F8jdKgGeyJA+vCZHbmnt
	 cAG7JV9gEHZWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980FBC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174220079360.27488.14944779650750204730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c3a69902b910477804f47156750b73005bdfdeecf70704515a5799a7526280
Date: Mon, 17 Mar 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742200793
