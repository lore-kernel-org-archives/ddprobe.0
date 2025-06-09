Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB8C3D544
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749455994; cv=none; b=Bb70+/AP8LFt6AlkIuKA661rrL5BaspgLQSlQKfuk7GAqpUIXxZUFE2a63OIWZk94XbPCjYB+6xm/nDi8X9CJ4nvEFXaijxDTNBn2RJ9BBO331UOUPKEwlhlf98eksn9u8D6DJS1zr+e7Bu6LGHIGYMZG/Wx+CkbryJugLTF76c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749455994; c=relaxed/simple;
	bh=e+srd2iGwPQvK9TeGM1rLiw2kYDVbhH0d/7DQ9YPm/Q=;
	h=To:Subject:From:Message-Id:Date; b=amLcQtsCrPBFLnILh6b/MGIiHddGll1f42clqy83EQSpP0GxRWWvFvLVjn/kn2RIlxnhMsvbKwC2lirQbiubCzgN1H2U0zG+024e4peHLHEq052aaUQc1qAWTevGviX9psSHetmEy3OvePKRflKAhHzODRpWZWcWdJ9b+HpW9tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2SxQ/3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2SxQ/3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF43C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749455993;
	bh=e+srd2iGwPQvK9TeGM1rLiw2kYDVbhH0d/7DQ9YPm/Q=;
	h=To:Subject:From:Date:From;
	b=W2SxQ/3updOeGhm/VzZYVTMrExW7RrVt/gWhADFLEVyYNjAYo1uwcO/Gu6/EI06To
	 BV2UzsDt6vi2ZPQCa9V4A9YepkMoR1iiU0wuMx1H7HSND1+moKf+UCFC2kBViFQyZx
	 wGis29Q+M6QUBnNnFRG3GH1eC3jVZtdlVUrurVgn0lkyM7vQjyJf+tZF6AJ22m6+QI
	 730VmpMVAmv5FQNqEDXNacD1GB/dzl0nhSUlrcc1b/ViWVZqS8I+70jTrznJdhWeWQ
	 IC5PLzbn7EIh8bZiVOv+85ygRkAZe9AEroke5Hq1fGZiQx3YMQe7YT5KWNk0xhBbZs
	 Ntukkj88H1Znw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DBB5C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945599357.5962.3875853102833400963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b2d5992cca023115823bb9fe461711569f199020266168c38e1eabc2915911
Date: Mon, 09 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749455993
