Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EF01B6CE3
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747761594; cv=none; b=njUJ5wG9r7+vLupmZKGy/bhL6D9XUTJO4f6MzL7CF9TIlSM+qWGgr/Mpi5EINhmiUzyLfTGG90PyKIvbgtp1BL9h9sEYpSNBoBE/ybKGxqNVswJfM0igdJUiy/fS02UHGNyUwJkF4URuMuRCZKp+fhYcBYyoMtEk780CELp6seE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747761594; c=relaxed/simple;
	bh=2mcPPU/k2OO3nlhhaYD+Qv2iJs+9G9kxevW2UMK3Va8=;
	h=To:Subject:From:Message-Id:Date; b=iJ1U9DpaEjDeNfmFHyNAjktaBlIDovUDg7ZRPVbuS1QsIufjuKQwmaD5C5InIfqKRVUuYhJ7z4mNf3RpwCUYYuoRKKJ5H4upY3ueQ0z9kzsk5/wPFiRWxMJYTbaUaJ6UXvpadQW4RA5GwLy9pxT9OSTwy1wp6Uwbw68o8lb5mn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gb5BLZXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gb5BLZXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC48C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747761593;
	bh=2mcPPU/k2OO3nlhhaYD+Qv2iJs+9G9kxevW2UMK3Va8=;
	h=To:Subject:From:Date:From;
	b=gb5BLZXxFf8mQHVsFxSD/2Db0aYXJtJ6Dgve0k4fE4nAOIBw2Btca49a7VhKk7N/G
	 eyNzMYr15kg7XKCT8+D9i46GvLNlVQ8cNZZavg2AuZs8NOi24b4DbYGR08kIZd7U+T
	 ksrK+gZhvOtjdSBPjX1dtLFenLfM14CjYF+D3f8oPrT5uxzNPBGCyi2EDT+9MUqfph
	 eiTljWUe+gJdVgiWCIwNx8P94EjSFxjf3D/geVIS4xPvN0OmcL5y0V2SBgQLPIZIDX
	 9XwvI2rG5GazUme9P50PGw7HpXVLKBre1icP/3lj2qb78sJ2QGwzYrrCDAUHoO8G0B
	 P5Sn5x9l6CEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBACC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776159357.24986.4882699770234221872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75791776a7fbb64a96ac504cc5938f7c762cc8bc50bb06141588a68b646aa7aa
Date: Tue, 20 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747761593
