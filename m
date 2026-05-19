Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AF037A486
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779190834; cv=none; b=Ooo4jDK+y8gn6ZPZI9k8QXIqm4riI+h/QT7VNt5crcKh/tbrvNErhGLusL5scWrAMojJv9GJlk19rSzulwOAI6Pf7fTDloAgdPvPO/9M9ihwZIbweRzR8ei67gD5odSh1T6HBShgc4ttJ0GumvY8/ffXyRbKbalrRTRrWkXPaVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779190834; c=relaxed/simple;
	bh=+QVEjwHBEEka10fXzSlfmv1kd+0M8Pw7x+KV0Lh55/A=;
	h=To:Subject:From:Message-Id:Date; b=P71dLbxwELHfNRQn/pxiz2udUL/LRdVHGsjqfTCPrrKGvdoC5f8WFrUFxh+bTzLo9wj/C1NwT8bhqR8e4PiYVgpB1Op5s6RptLoAhFDpSXPYYt7P7/QompoW3qvIYIE1l19MrZRFXcDgMs3/brbO7HXAwBLRKm4p3QHP8UQ9qgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAsAzJLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAsAzJLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7296C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779190833;
	bh=+QVEjwHBEEka10fXzSlfmv1kd+0M8Pw7x+KV0Lh55/A=;
	h=To:Subject:From:Date:From;
	b=UAsAzJLEQPSZ82Jf0JURHek0+sQFBeHwQ0Hg5KJQw8BRC3C/SrRgMKNFOXBM4dAz0
	 JfXsUw58pRDlDGF02b0mJwK7HgVQQkQ1Q+iSL83Atqz6mMAtrWs0e2FuMrgQgUCo3i
	 fzQenruCSGKo+RiGF+qvJr7nAiVdazxTqiUo/IM3MzarmDm/6idBhgT3n5lq9pQUze
	 tWXKvToWgP97Koc24NMBQAMPK/QvjESZ3BhOucJ416ddOQanTQMsQbMJPspo4ccOO1
	 Rlhyng05+PPACc/phrctOwARSpaLIXSfl2PPFw0L/VYG7PYsqqp4ZTKa+CGx7/mmEP
	 yjDl2n+z56Zdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70F5CD5BA3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919083373.17066.16870365753331797357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13550f407659aa416faca278d9a2ccc3da24d6813fcb42c585f02357356b490
Date: Tue, 19 May 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779190833
