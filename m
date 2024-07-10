Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A98F4AEE5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720580783; cv=none; b=k0nWGSbTllHp2uk9sMeu6L4pydpaUUI/Onr3M/I9+UytPgc0J7Cb4vgmIesDZJHTZxUwPoHymMrUs0ORo6ph7b0wrXwF/j2KcWaFko8DAkLNn//mqE02qmF/lMfA32ySdKc4K+kJi5DC48zDEASrNzy3wxMYgt/ogFUg+01wei8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720580783; c=relaxed/simple;
	bh=mGDrCVbxDJ0IZH7sh8z4bQd0zeiCAYwWlZrwDXWhNIA=;
	h=To:Subject:From:Message-Id:Date; b=UgEJq29EdSI92f0cc967XxICufAv7X6MRPQjAIwkOvEJoGWsZn+Ke5kF3jR4qTMSvM8ErZsCaKURpk5qqMpcTiQhM2isvY9buJsjDjBWdD8sUDnHpGEkD7UwtZNC5Vo7qk3DKLPBIXVU3/HxQGcDUZkvxMXNDrE4gCUSUuLRTwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUGkJL/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUGkJL/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA076C3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720580782;
	bh=mGDrCVbxDJ0IZH7sh8z4bQd0zeiCAYwWlZrwDXWhNIA=;
	h=To:Subject:From:Date:From;
	b=fUGkJL/HFY+HqCjkmM5wApw+u+fefaFuWvKyDpwdaRSAZk8waaf9ZyMxdMOM8wrXE
	 NF6hejKl6bLyefnDoE6j0D1Ujm98eZYeDwZzBQcQGB5Sjv1uw+Zo7RiYYcJtamTIc3
	 NTG5ZmQtQ/TEj6piygZJSfnYyrBBz9Kdvq2MR/CERNwvxYWGm/8ZzXFxUaSQPX3c2R
	 xduJiliCGWzP/JLNK4Hzeuph2T/Gsm6x6eM7BY9te/j+yIeqjo6VmuGwt02weOYiOG
	 XPsyVIE6Qsa2yIHkVTjPWHavULHAe7291R4bAcRAPcOABTV23PP7kc1nHZtFCUUkcY
	 FU5p1xRA+bORA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB1C8C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058078275.19808.2350159261563401007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a1765069258349423b98bee9156a43aa2fdc0b323940d9568af659f24e8e98
Date: Wed, 10 Jul 2024 03:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720580782
