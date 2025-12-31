Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220AD30F93A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767161634; cv=none; b=HUvNhkOa8J3vfzM3Ep90TNJXgT6/CtpURBHjWB89H0fCvVNJ+mQrSAE7iTpWQ2uzfk8DRxfTXhktI8GvvCMJw76gWolTxyeT12Ih6a2jRGFYciXYbk4HdH6N8OpiH72VzYG6oKj4HRWULrREmcwboCUTY1pgM94wLiI5mV7fi4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767161634; c=relaxed/simple;
	bh=QOg/U8SaWYt16G0HcgCKGq/7yesfhNCU7HnH5MBgnco=;
	h=To:Subject:From:Message-Id:Date; b=Ihp/ffVbgJoM4mZ1haGxGQSpJBhiH1C+3tNkGmjun+0qtnaJuIBbrpBDNU/4OeJceCPmQ3pLlFHUHE6MM4bEoYEZVX2XsljbHCHUoo7J0hdwnmwm11jL2KoB7FzGQq0LqOep1Y+88OU1x67HuGK/q94GEowoyhbL5hcxbw8Fsss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXNoO3//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXNoO3//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA44CC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767161633;
	bh=QOg/U8SaWYt16G0HcgCKGq/7yesfhNCU7HnH5MBgnco=;
	h=To:Subject:From:Date:From;
	b=sXNoO3//g7o/uEpst7PAye/yXLu4rMAGiZcW6krYusJaQPyi9ke+OeyK7MK7Vdo3b
	 UTq4DkRC9xFxfCro5jYS4u69fiS5gqzm/1x0sCeNWfHdaOWa9Dr8jqzqqudUxwItra
	 t8IK6lHPyhTn/GUtqSPy5EW9R1xpY/4UJqE2dUAtxjB1jKqfAx9GlbOphTBx+C444t
	 vFoFvz4t0krzDW0Z2tYvOf7Vw10BaBeGeBRG6VZnjm6D8eAIuMPsaL8/hjfjPK8df0
	 kShD/Xke2BKgT5vnVeDIJoIHJmFs7QN8YOA6Mi8PlkT6JbupwB4uroVCpwc3dW7qBb
	 nBK7ImkCiC4xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97367EE57D3
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716163358.23831.6513211515832778503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd145c4b07c7dfe9cf2eb37cc03d44949f959a7b70df534fb4de993bd77c0a5
Date: Wed, 31 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767161633
