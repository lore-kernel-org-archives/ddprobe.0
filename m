Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55064179BE
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714461743; cv=none; b=ZhE4wdsHhVU0VLMZIayzMYgH7kXidVRbCUujiTr1fdmgHREiDLOcSvlK+tbTwZJdZAHcBRKtrtLZsZnirZaXhil4nf7zq2RpokGiBpdIVLBPQTC+vznBmfe/ToZ8QVQzCJFI/T0IOUuEDqzuTzSrZEdGlP9e72j+21GXYfVcAPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714461743; c=relaxed/simple;
	bh=TxvbwhcT/pu4PqSQQ1J9PJJB/0vH1tdX+TudvOMVWZQ=;
	h=To:Subject:From:Message-Id:Date; b=EGSVGjaDrVviijLuPOGD6WgFdI9m+zir55GpAOYREViQVkJX+vf1SYnN2oA9tsJ7Aja1gN4Qxwo0mmIVuD4LHZnRaThnPgRqdTTEf4FbUAbqbsiCc245r8pSlXkUYhoqkVrhD0DqjEdyNW2t+swzLZrMKp/Rk5YlEF0BwHeflqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/ztdxku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/ztdxku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA546C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714461742;
	bh=TxvbwhcT/pu4PqSQQ1J9PJJB/0vH1tdX+TudvOMVWZQ=;
	h=To:Subject:From:Date:From;
	b=h/ztdxkuD3QP5Oq/3d2cpYkVqK0clJUvTkemVbd9Xp6Olg3lLemmpxQ5XV4p2aq7S
	 P1LGcpvQ/5cWkvJQP3tmACGPc/HFoaXFd4b4OG/WZN9umVe6OvXB/lklcufbIqSgWp
	 Ef4tTUXfNz2GWCbmVHlOykjYyUQ7kA38TxDFrj6r6uTXZreXaZE2G5lV7/09r86ebs
	 LRkCZDifjNokmCBlLRNaAptIbZM2EdVIEfw2QPgeEQvDlJ3t5qZ7ZZEFa85Ffce2Pt
	 H6RBXuyHmgbQdeYrmiP9mGLEhO6Pl1jq9eNF07lWdoZfy8KJBrLABLCugB48ogrNiK
	 Ia6OBiLA9EKOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA0E7C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171446174275.12644.18424046751739191921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532a4728c47a2b68303bd88565c1c2b2637a9c9af0525865f7902d511fb8a67d
Date: Tue, 30 Apr 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714461742
