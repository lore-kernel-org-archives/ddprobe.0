Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDE92BE641
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771171494; cv=none; b=M6lrfuPD1k0jcYzeZOXRvDH7BDYdHI2Y5XsvP+/FL7UIgTjQBZ9av/r2HL410uLoTSbLTxUniZaEkhr9C87OR7ax9b4aJ97mZZGdicJb3gR8STXU7jla25tM45cnBzONKaxMltNSFEXPpL+cMreqSPmc9h/Q6jk/EBK9cCA9HPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771171494; c=relaxed/simple;
	bh=GOhdsTtNEXGNvOCwGMzGM2e0rW0XNespWhmEOgnV1Jk=;
	h=To:Subject:From:Message-Id:Date; b=GvRh4ZmyKByoZVS3sztlEDkN2ZGPftxQNZqfExE5TiEwkfQA/1+qwNDD+9UXmBmj1WnucfMRBMT0fj542fuWBzx6J8dZRjBM3jEewVogPcWnpN7Dphv97fP/uW+PazIeliO21kl3fEzzkvFqr3WbKrgNBvX6hE5vAaCgLrQn+Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6BZZt3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6BZZt3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9761C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771171493;
	bh=GOhdsTtNEXGNvOCwGMzGM2e0rW0XNespWhmEOgnV1Jk=;
	h=To:Subject:From:Date:From;
	b=p6BZZt3AoNV9246O9QoaRss5iCFZK1SnEiiJSmKrlhG9gd6sCrZSoZ5MqE7e7ZjFS
	 WApuiAwzfcy1g+dN7VKIORMmDHAODqHrYNNzKZOnJGrIcCaIDGGilkCDwLA1JNQjeo
	 P7NCHiRz0+pKpUor7B5ADdxCB2YjPFCrdy78GQHUWjAZ1my5LtrxfyPKeXTo2hFTIi
	 iTCe9AD+XXubI4aM1lVSdZUeSzRWjPEkBFi7c68pXC6r+AQKTFfpGqP/2K05wsH4Og
	 riROwYa0WZwCFnGigncgzvGkbA+qpYsV9SllUJVg7MHgfXd/KK0B8dQmMo3Xt3pWpj
	 7YrVLK3KWTq9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960C7EF586E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117149360.19873.12996133736711919125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bb97b6ede512ae5399751ad090d758f8391510818c5a8c612433aa5d134363
Date: Sun, 15 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771171493
