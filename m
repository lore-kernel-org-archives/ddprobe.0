Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2A67FBAC
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773792893; cv=none; b=mraEwd1kGs/ytv5jOPcmk1Wo5BYqG1cSn6nflosmbhwxanAF7QKnHAzkk7HBArOc0BdYSbypv6OnmAK/bG3J6TgSPi+XHsT0HaBl2G70C2nnlegIfQtCBqS73V0KR2kedXUqBFAKPSHK/Ea1xlnSvLd5bGHW5aYorSOFm1MsOMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773792893; c=relaxed/simple;
	bh=dxtMNhJwDzJ2cb6GipI4/3Wl3T/sWIjN5y/OExgN0tQ=;
	h=To:Subject:From:Message-Id:Date; b=V6LuehXrEjtvdJHRb+p53WI1m2fS4PwC8lqVDXO1EHbSX1vwbLy+CjvbRFkcXcMTGtSkDtYwBnYXO4fvxWTXywyPr/dGAqcJsrFDg7UlumFsGaxSj9Sjv8dBk9NcmCf84TX4nZNjpoqQSKRMplql6xS5fqo8xHzY13NHK+MUXSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5zfKOzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5zfKOzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A282AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773792893;
	bh=dxtMNhJwDzJ2cb6GipI4/3Wl3T/sWIjN5y/OExgN0tQ=;
	h=To:Subject:From:Date:From;
	b=k5zfKOzInPzZTnx/+5kq+m6Mo63YSJciK9gEV0l3jHlR4EzQ8jYhijJitTGcH5mDn
	 4+JMo1ftDaMIyb0WGskxG5dMDuDQtMoHi4OOrbNjblNQm95xevUHc8allden2/kcTo
	 mjaQXC365kkMxqJCEpJG4AHlUhkSPHPk9jfd9vr9ZHhkmZhnP12LwytJ46btqAYwNn
	 LU0QobTgCUdXxq/ELDovwMfzr8t0NxKd2fZ77ZUWfmCW+cgeIvDcNH491nmIObYcE0
	 a1X7MfQKRae7TjWiu86pm8mU0M/0+1OWmdGxmF8vHIn6soTgcMyaQFB688P50u3R58
	 N4ICW9z2hdwwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D3FD8779
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379289358.2011.6269545431950912406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27dc4ae11b7c1939a344617a157ee6332f6df9f7c0229b3eed326d3999ce14bc
Date: Wed, 18 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773792893
