Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9D93B14A7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787743834; cv=none; b=AilhnPE2Y7o3O/66j333tENfIY9+OBgbcRAxM688CV/p8ehPwoFO2dffAg5Zo48znMb/QOzwMoA1CT/xeycvmGEzIXzTd97DfHhKZZRSS2l8jr6Km6Id7J3VGR4RGVI3B0J4E6vLmfGzzCYFyAVWwOOHFYhlNGzoA4Ft9uicJMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787743834; c=relaxed/simple;
	bh=qRDz85IYs5rJ1XmNg8/+DQKprZus04ZIE+prlWlcU1s=;
	h=To:Subject:From:Message-Id:Date; b=U2nbYiVa7U2Koz0n8HA2ZeOIa9QACrJTiOv043xK2TnQtWYDSLYMSdKTAYicOLC5kJjshiZUogAT5ks+KTLywF3/NPQIE0eBm4ecJGU7r5pDksasSB3kb4BBPmHwCBlBdsNX4bfV46IBx662Cth40oVsa/HCi6ZoULiF6NmUtpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwLLm07z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwLLm07z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18DCC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787743833;
	bh=qRDz85IYs5rJ1XmNg8/+DQKprZus04ZIE+prlWlcU1s=;
	h=To:Subject:From:Date:From;
	b=WwLLm07zI2w8BugogMQxahD3OXFzUbFISaYy21rr9Xpe6/70hopjLXbf6v/1ntdJk
	 7SPXjczzS6Y995pJK7w4+J83BHgVAeWpZ0ON7UFSQfX1Ov2zSFLwHU3faRs9nQoasi
	 7wvMUGteuZxsndDxvT86vZ1F+64OyZTnCg62HpmqXvQWUEiXnEhkzLIGg353uxhAJ/
	 Yj3uS0VR6Sg7xCgBDw9UHwx/xVuVwwxZlnjiNvB4/FH1kYBDjcMTPFI/z8w/rX76nW
	 befbDTKQApKgD0hUj2dtNqRmhh/l6BP5OcO7OdHyUFfjLPNLUChyzRe/dLVq+rpbAV
	 knL0GeJKqMNSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEFDC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774383370.20733.16366009101628449835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617b8670c4ccda901ee0343a139d13dd1b140b3527294a78a18aa428154e2c97
Date: Wed, 26 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787743833
