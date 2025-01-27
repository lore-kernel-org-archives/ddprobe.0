Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430E03D64
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737988554; cv=none; b=l2ApA+4/oczWs/plBrjeBzYugE/IbMA38WcSC229ThSTgKNBAIVflxr+wXAQ4KgNaya2BqpJmuymvKmutku9NnrMopvpSF9uTRq+1BnCn+78XqOZglieZmgnt22tGPpzlA6nkRphseD6xqz0VmpgW+D4hgbXi5hsKVvel6HiX20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737988554; c=relaxed/simple;
	bh=zPk0jeZtlkHnvnE0+sw106KysLCuK+enecdR2N7fBnQ=;
	h=To:Subject:From:Message-Id:Date; b=DFUbmAU79RSI5trHKgq94PqB+Zszi+G3AoaFCij5nKNA9Cg+Ag6XMUtze0X2bcvfxZbWSOxOyLkkiewooaRXoBj3BZeATzLVGQGCM53u9aJFmanMPTSCBFnOM7WXfM/kaU6G5Tk9k2Ggwisrte1moNWMloO6yX9BIkYKbo0/I0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9fzN6Ch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9fzN6Ch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EF1C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737988553;
	bh=zPk0jeZtlkHnvnE0+sw106KysLCuK+enecdR2N7fBnQ=;
	h=To:Subject:From:Date:From;
	b=W9fzN6ChybqNxFghosDEj2c5Tb1Q6nhlw9S157/X8P47nlfsjc+r8EfONdeMbFVmv
	 GzVTjX1/6V22pPgbOry1Csa/vp3YJWAd9NSuuGnA47cVHkij3GO2p47SorvgtgKOG3
	 chlYPAI1G7Ar0dT3ZFMXdWrsWR3sF5SQIrfNjE/Cuw0nIflBgD07fP5nwu623AAetB
	 sF16EC0ZKgQxzpmGZbqrWjCQdeCjhVzHSCXsll36/iVyT7YI513iw+0rSScDUof9xg
	 P62gQhXaSrV4cQ+a3z4sHizKNw66urIrzMe5jfZGUZvGJ9rYGalmu2W9B3DU5hZTxj
	 umnBysI9hHHnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FACC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173798855362.5838.15922113225763264405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb272216b8ff819733fd30641b6983f07878a630efb48a38bcb3df67616b7ca6
Date: Mon, 27 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737988553
