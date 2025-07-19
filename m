Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44C522D7A1
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752915594; cv=none; b=ZZ3Nhh43xHArKgFLYQJBZyAnDaDfD0HInw0Inkf5X0yL+jLLvEYWdPozoO6w7E29p082XTcJEiM81wgdtiqMZ8xjhGuwp8K/StI3DaGiFFWGB7E7QQcYBofvFG6SOJ+Q4Q/71Ho4o+OTuey/eNxJTBvm5PsbkwNEHZQ4/bcFe+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752915594; c=relaxed/simple;
	bh=aZR3xjI4aaEyf1W7bK2Ow1h4zRxnQchNDQxqeI62a/M=;
	h=To:Subject:From:Message-Id:Date; b=KatP99+8UMz2kwELhTaQUK+AVlRBSEVlRjMuQonBvTFZeG+Mm9nUyF5pfgfR/eJ15nsyZpfCIFsKS37BxLNVZZPowCnM+rdaueZIM+GMMJM2SCCTQyvDm5uvCLx5od82bR5M4qv7W1SQ3Pl3C/uNdC15GkFNXnPIJliOs32OYg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/nNVDTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/nNVDTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2E1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752915593;
	bh=aZR3xjI4aaEyf1W7bK2Ow1h4zRxnQchNDQxqeI62a/M=;
	h=To:Subject:From:Date:From;
	b=k/nNVDTIqKbcqS6xqN4wfwuVFDKTvBvUuWvJVubS01Ejuj9kZ8SxTjMlrxxlUmWf1
	 /VfyqicS8ATSvm9E3sHRBelJkq90+RZ4/171r4o7zOzTpiOrnQAZBWKLGNMDBkN+at
	 8UiS19Wi7Xer6xyslzFuE5Clne6aKkauz/nzARh41muk2cHwgcI8f4AKDdQTBiNzvW
	 9Ge76u2WgTEvng7TAgrZw/nZosy5mzcGnEpyhj4ZbC9RyOeK/4khYVlFg/xc7NsMSr
	 G0RYu9uVVn6MGqbGKKnx0Gjc6UONgq+4r5fKA65qFF4vs4oo0T+/Gx6N61e4nJ6/+H
	 2yDvvS0vZXG3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C60C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291559358.7977.2184126486479324368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62c19920dde6085ec5bebbee6f6bebf20bd19579701b936aa0d692682dfa226
Date: Sat, 19 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752915593
