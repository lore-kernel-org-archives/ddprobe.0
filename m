Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E33A35968
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757736596; cv=none; b=gWML4ZXY2mv3VkDmlwuGlW4GrB+RpuPtejIi/BeNgkIUaUoXYrVfvLTyK0a7+5i1gn3dWm7vtyOe5d7KxdTpH2LpdvV1lGThTH1EvGSP9fYdZ6/vSA0gkRd16tna0ldfNWgTn6jVbhgqnsx03O+41QnY8/HU2WbqAK1SroHg/1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757736596; c=relaxed/simple;
	bh=EokuxDkzwARLpaP9H/CbnoI4rqTpm1669px1/UynMMk=;
	h=To:Subject:From:Message-Id:Date; b=kxXvMMw3rJ8kaofKQqYIZmUG+/xZdzaiGifYrhW5knCkKRNdJrmlNq0d25iJcR86V4ONTkV5lWOYjDUNk6ySLXKOSpJ0Uu2sAFHXOS99v5sKrpdUOE7e2LwqUCJcdbXnPmcUhUD7mj5P5PZdONs931rZnYaWa0tI8XRmys8dpqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVxSF7O+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVxSF7O+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D01C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757736593;
	bh=EokuxDkzwARLpaP9H/CbnoI4rqTpm1669px1/UynMMk=;
	h=To:Subject:From:Date:From;
	b=aVxSF7O+JaASCOHAS/NHBJaE410akNOWFKO3z8pAFmvnnCWjgEj0Ogtx1PlUwqV7N
	 arAWNKzZ0VSFXMmKmkJ/ooMZ4lrxfjb1YmHxh6sVcAIVuIqfeGV3oxDTF96zyKs5ln
	 +pOcRD3IosSgWwoCXKtPSUrVRcc0TyoQy7JmejeRoayHPKXV/gxR4f8d2HJC1Goqks
	 UM6VHVG4cONmBlTUcCfEzSLf4C5URXlv1lEqT7UDoxc4v1V/FnuXHfgz8P34ccXGr1
	 pB9EEEffRFjLmyMdvOf9CtSSqikaGHno8LXmZZoakuW2fA4Y7APKPzgdnkruiqaW+U
	 Scbxjq9uWP9qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F2FCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773659357.28507.3938019014398706767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1930f150c3d3f79267e1aeb1301126aa79a90ce7070aaa9b8d79d0dae8cfca32
Date: Sat, 13 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757736593
