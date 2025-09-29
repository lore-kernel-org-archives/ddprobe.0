Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B5746B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759184393; cv=none; b=D1a3g0rBZRwuebV9tuwPd395VnT6WbEZGmoEs6TZVfb5o46QV/dZ2SfimKckQqkPcFvXlDLNFsEdcyunqNHKJlcIxlq1HfZJO8vjg8f4vDB9VQYHkbIcV+F5Oem76NEwFR7Ld4BcbhT26+9ly9CVwH0/vNyX2d1ngXaGTc9jGhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759184393; c=relaxed/simple;
	bh=kXde2wGF5ndupSorNAimMxcf0mj8F+9/l/wgV2i2Zxo=;
	h=To:Subject:From:Message-Id:Date; b=EybwYBbbcvEde3W8WKzTg6BP+boYqEU2qa9u1+qXEsZa0ZO47b5NGXm6/HDfsFTC79fZClsELTg0w0qvQ9d9EubQ4tFvEpJytEhpihslcAMxiea0VZrMS44Qr5f2Z6aZJABfxnTK+J/qH4LUZnBmM367QT4Wctta/+Rt/dbZhPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4LLiIjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4LLiIjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C9C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759184393;
	bh=kXde2wGF5ndupSorNAimMxcf0mj8F+9/l/wgV2i2Zxo=;
	h=To:Subject:From:Date:From;
	b=Y4LLiIjwvKAB5vQBDM5hCrD/NnSs2n6vBH7hRKuoJmQ4/XXNEWtkZJ7knnH2GYww5
	 Tq1RkKhjwXsH+WgeqYwTvlrIBbMnEbCEl3D9wLkrUwO22Jg86qBn4zSCCUoo1elaLe
	 FYAZp4UNZMLufOkjy9uyHGf+okhnZyg9TjTxixd6JDyDKeDkk1SvUbNATFEsgD82jA
	 26nKAmw81tNSQ6SaFGSXOzo2eNQoj7DiT935nrsZolrAdYKYL6l14RlCjA/GYhrBBk
	 j5OFXWVFKw86qCnR07sIR9npzOoVNy0XN+vGQanjJjC3PtS7mJdeosgm0jEJ9hSu3O
	 sf+LET4T9J8Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA1CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918439359.21374.3199095992583667652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63083c4919656740f53312ec7a80d40fba1bac688635ee136ac2f4881c4554b9
Date: Mon, 29 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759184393
