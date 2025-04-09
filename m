Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6531A5BA4
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744172994; cv=none; b=spQ2VvuLgUGbh6c2+REZ1eXsD+eS4SKAMQl6zocW5yifa1NkDnRxQqkdSEeD8+b9qAprh9aJ5pVjKZApXiMwwaEO69O5GeLPKJ4LeE2NToIlYSerV1KpnC/kzaGugK2EkhfasYG95DHhh/mSgeFQozjEfPGneLjaLF2ISGSmhx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744172994; c=relaxed/simple;
	bh=hUNQGGibMQYess0Xvr6y3R+CINtHXuIeZa+GWlSfnro=;
	h=To:Subject:From:Message-Id:Date; b=A1jStq31Avkd1md4ARJuqCe302VYHz/zAwgX1KQ6xwGRx2jTuKTSTk/1uAfigMcS2k21PPvaP0W1pXsrTj5BBPDDZ3Qzn1omfMJqBdAa6LVsRbeEbTDNDj8WZSu4Aep2EIxoRZIR6SfMtIZuWqWiAgh7eIB7NayNX9XHs5KBZUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0dZZpRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0dZZpRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF074C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744172993;
	bh=hUNQGGibMQYess0Xvr6y3R+CINtHXuIeZa+GWlSfnro=;
	h=To:Subject:From:Date:From;
	b=i0dZZpRbfioV9gyeC0Mfw8fI5X8KSsVDy/L5eZdt6Gl594XsH3eQGMXV6Na9aBEPB
	 DwsrO2w2kD03o7G5tsCg7AiP8mu8aTqOtA2GY+jFxDJ2whVAnbwxsGTSIA3mLgmGJL
	 /PxROc8r1i4gP4KEdTC9yv/O3cAsJlvMeUN4dFGxcSdx1FIllgIEwdTq+7K1V1I2Jh
	 Ck1E22h4zm/tawgMywRPKvhfl1e0vVs8DYf/AWsfDPW35cyXH6qbfDr1quAsqIIsFo
	 LPxOnWnIKRKA3WhPJrFW/0qYlZI5q/Ei5uuiek+EZ2yGzeXdlBlCgyOSb36b9YyGPU
	 ffEL+mAq+7uOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957ABC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174417299360.19040.2432752228622667661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3984eb4636d0b994fe3f9ee76b760e6592ee2f77b69632857bbe02c408206ff
Date: Wed, 09 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744172993
