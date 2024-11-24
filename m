Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380D7646
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732407354; cv=none; b=Nl9SVNSKRes54YEkfuHMPA8qeCvl+IpVKiy6DX0W0CPnhQFmxXdc0BJ8E7Kx+NNssz4rRc/ysM0hVFzm5o8JOjyWobJzJCBIkKL90haYv4AAedxv/M1G2282RFicxfwFZ4hnpwgaVlK9SPx0nhlmCCx+gR5CNgVZ+HnoUhaHq7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732407354; c=relaxed/simple;
	bh=NzrJ4/wZH6s0YmhbBOxFc/vzFJZCjl85tUk2HgI4s00=;
	h=To:Subject:From:Message-Id:Date; b=KXT45m8I7o44npiJoicZ7m/gbfezGa+JCS8rgfFtLUQUfpJUluLKLeAG/2qPBWZ1ahdkN77IvwGu7tIeC0T/Q0pEU2c+1GPD3Vt67RC1M57QEXYyPGPVw7vBTAo2a3WDX5UlAEmdlZ0b34pFMtVL/fFjyGC5E/eF9GIxMmzVwlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFN9c/7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFN9c/7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2942C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732407353;
	bh=NzrJ4/wZH6s0YmhbBOxFc/vzFJZCjl85tUk2HgI4s00=;
	h=To:Subject:From:Date:From;
	b=FFN9c/7PL1Wp/hN6haZfKPvdx/TBJb0i/3uk9+F1n3ZTKE2cZDmHXMnqi15T2ErpU
	 g9S8xlS99B1PR7V1Ct2WpCYJ/D8PNwPuMR0Nkm59CNuwSuDQ5/vrcADZQ6/I/mKNWi
	 nWFPG1bpp5GCR1/eCv5H4v4jws57gqWFKY9dtJjwiEA9jSjbz9WaQQlCO7dFx+bSgS
	 3C4yug9aXiG7/t8wKdRQGdm1HIRAmpCLNs6zVl5UUr+fPQQucoU0ZOCuNBVsuBlsyu
	 xjJfdfUCVh6bamszQWAjvOPYDQYm5gMH363LbZite1tC8J7hENR76Uxrp+baql/3ZY
	 kfDiT1cR9SquQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8B3E6688F
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173240735361.17185.2823265168989953510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2766f04e5cf66333015016097a32a9679276bc2484db4c89b403e3d201f665d1
Date: Sun, 24 Nov 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732407353
