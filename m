Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4B2181
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714962743; cv=none; b=q65pjpGIc4N6hdDN2/7Iu7VBmU3x2Ds1t7Hb1dcMeDezGMEiA/UrWUqTxdoSvH/Uvo7ByCQhQ+sqtrCLkfGEWaJids0deNA3x7ZBrRbCSRzFW70jV1TsjZXTMCiZ6BI4ck/Lkk0e7S+QCkVtN0o8U+YuaYr75cJlO6kvX0vm30Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714962743; c=relaxed/simple;
	bh=iCawZtEExA7kostqEaeJHZAUQF6NQftFwOEe5g3gXbs=;
	h=To:Subject:From:Message-Id:Date; b=iB+RlpRQoHsqeHY/Hd06QSaHzn1lVEcWd0WyylXm/yYVX2hmk7hUQcenYMZVQhRfuAdBmVry2jpNtkWsE2qHpZ5avhZf4o77+uk16yIhoGiglmsVAxj0vh++wWA5EqRs5FcjqpN5axEZoqqp54gYzh5aNHcIsHWIASh6Tts+tM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTYxYKYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTYxYKYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E39C2C113CC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714962742;
	bh=iCawZtEExA7kostqEaeJHZAUQF6NQftFwOEe5g3gXbs=;
	h=To:Subject:From:Date:From;
	b=jTYxYKYWZ4hAEdNiApRFM3ZtfWzTfiTw/xAvrzYSYNaPS55wxqCLHRTL6DsZKfYFy
	 iA3fYYAtoP92lwdfMRwZLgWUWzL/31Zr193fxN15EH7QqUZN6dWFJxCADSWlqDw1Ia
	 C+WSCFqYfAhaXJtI6kZhguGg9eC8y6IB3inlk4KLauGFhXVP4aumV72CJKzPiJz51V
	 JTF1H6gsXHnOQUh+j3eeYM7omAqfYa0bDcyc58wg8qhEJHZSGlsSu4sOYOke+crUqv
	 Ydo6kgqcwLgBBi68KpTAQVmgeP/GYonXoi+kzjH+B/EtSU6QjqnRz6prS7v2cgnm9q
	 EzQzM6nA4axZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A9CC4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171496274280.29473.13609796718381745039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f790486ca34db7bfe156f0b835d2677dc4fa8efbb5b6c9395675f3de41bb926e
Date: Mon, 06 May 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714962742
