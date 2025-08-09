Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B0A27C178
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754750994; cv=none; b=DDvvMLdDlCUejdg2H2DOLe2F9gZyVBjMWS7GonDKtapGBlhPMns3JFJBqafin1s3DGJmfWzJBe0K+6FGpg6gOnL4hjsVVLUu/8HmnMXWtcVCvFXbHDOjC4B9A26GczdSNUOMdvdP5XhoaJXjdNGjX/B+LxBPPpz91eFczT4QgHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754750994; c=relaxed/simple;
	bh=u71Xgijwh9R8sZbNSgkHixcMcdVN+0WOGqXvvY+bkto=;
	h=To:Subject:From:Message-Id:Date; b=tjqxCWBc489NN+1EptHTd31nQVJ0iHSw7lQ6UesGvSEkWx+1JcB+Rm2Sbq2BvFQIOdC/UQOwiI5iZk7aeH+DnXhJoIP2lW68vlWYydb4txh+CnSupPzI7i0uibvXy3U7NhqwuYrrL3z0vjVIOObdGUVpcEbgvCmw8q+fxX8iGjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jK1K4cMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jK1K4cMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B967FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754750993;
	bh=u71Xgijwh9R8sZbNSgkHixcMcdVN+0WOGqXvvY+bkto=;
	h=To:Subject:From:Date:From;
	b=jK1K4cMk/Pi69mRetT5AmbZkR0eIO9Sh7FX12+FKvIA1dorD9mmhgshPgdlTqqcu2
	 82zm2cQXdjlKF1VqAOlaCJvyN/HBXHG2y+q0Dh+Zujjn8/dYgtJ8dTGS6LaInEtnEf
	 Ytd6ksjDv1gS0W9J/H6zh80AYqVIAQMjMbblzkAeWSVj9i1Cud6DQ4ye+j9rWHZ/la
	 NpW2nMUj6ctufb/KLwlzQJGJ6QSSJQXnYVsh+RzP5ASYwyaAcUdw7EKvmwSSkF+9s9
	 Yw5ElwCOIQhL/7GLnXnUVQFBVmPjU2pitiQ4ijSKeCK5t3EHiIgTYGd2iL+t9QM0Rs
	 BoHLovGEWmWPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB006C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475099365.22686.12035138016760944811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758b066184c012da7836b1d584beb1697c26c198a1012a55bc2384bb54b75939
Date: Sat, 09 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754750993
