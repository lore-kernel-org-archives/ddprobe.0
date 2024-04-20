Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEC8D530
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713593423; cv=none; b=KH8BI0Hh20dG7JAm/eUoGN8eDEd2ZRkmSzrqLYTVRA/7AUWWB0Lrr9XWolHEwair+Q7iPQ2SUxAVMJ9Ays5Z7V52c+CyKYvl8jz9fEECnkrv636P8bHuTbUQkiOzPQSpsBZ0EhsSEccwezOQdDhmLgLE08EBjmwS6/fUQh8dIuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713593423; c=relaxed/simple;
	bh=qeXYKLb1UE8BZH66PasNgeaeVZ/4BEbY75D/xPdrvFc=;
	h=To:Subject:From:Message-Id:Date; b=sciTdTV49OOnSoLrIyVG4imQ+exBrTdsku9i21jj/crsiqmihR3H3HrGx5/jjY6+1El3NFHnJJTNIzRCEkE3TLGROrGTkmdQ5mZFyPzJHj/z323LivQQmCYf7gW1TvECz4CaoPLe6kvzzKU64CCq6qPVM+a/IefgJClhCqko3X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0xhxYpF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0xhxYpF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14F0C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713593422;
	bh=qeXYKLb1UE8BZH66PasNgeaeVZ/4BEbY75D/xPdrvFc=;
	h=To:Subject:From:Date:From;
	b=d0xhxYpFOfzZqMlBFZ0whi+HTdoz0lN6JBEMPCPtKeb1AXzuM0FqCqOIqS7/MCG0m
	 tbWat1KWUaNTfc5gA2wFagDe4KsHcgI3fCUN35AKKbuf3PXzUShWb2l4rtDB3EyyGT
	 n3HInTDD4LqYx4SL1TJNbjjsYcanJT1JGE7kQcz9+0BKAQCVf3d0kk1XFo944nvrna
	 Jv4taQYO9PnRnMGoQSYoWsNJrHb96+GTTlFwS2h1MhQ5/VyQspWRv7Jqs7sr90uHYE
	 OcJcjwzZ7zmG/+Bgn07dcnU2oWoIqkPGl7vES5Fn9OM6W45bsGGLOAhUCCuGK/m31u
	 tWz3ZDpZXa9Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC798C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171359342275.18374.17528363136622638635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6914881e1c3f2173ff191f7159bd3f6b61bda9fe993cdc13a15c40e27e18f155
Date: Sat, 20 Apr 2024 06:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713593422
