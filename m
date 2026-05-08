Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F2C378D82
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778240254; cv=none; b=u6YBNu3arQ2QJ2s14QTgASK2hh2W6lUvxQhzTNu29vTNXrQO9MwRYM5cyeS3uSPMOWVLmQ9foMhpwknjW4Qb0rb7Zd/mDHhcrQoesrYjXSYUAcCpN3PXV1lqM3PQ8VpAY1bivmwgNbqrjdwtdf26OATQebN3Qu1jRj9t0IhEIt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778240254; c=relaxed/simple;
	bh=FXh9sw7LbkRcNx0ZklkBLqnbCQcdvnhqzN//1vuMPW0=;
	h=To:Subject:From:Message-Id:Date; b=LvcDF0QH/SR6KwjYs9V+G1vYhcSKPKrD9PnSZ+GOUx3KqD/ESK/Gmc9CWDXivcOrOGqjIs1djV1a9VPQxo8m5u1J16cVwd6ei8q4Dmkr/aNw0BzEz8IbeynNGocRa+9CSFlNQPC7CpP01cnZJm+K9uE8chiJ032xYAw0UK0njgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOl6/7mm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOl6/7mm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82F0C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778240253;
	bh=FXh9sw7LbkRcNx0ZklkBLqnbCQcdvnhqzN//1vuMPW0=;
	h=To:Subject:From:Date:From;
	b=GOl6/7mmxg2haM2qmUHvxSkf0uQyCrUe61+T2g53Kp5ombnXL7p5iQLLjdveIypPF
	 b4L+/rjiIIeXSUhRvlnBEvG5PonD2TJssNkVYojbctqjXuxzbuiHdnKyTSdVQEyXCf
	 HJmM0uf3l+BNp9Iocwa3ZgAaYeO+n0BJUK6ZdykV6yZHjYaakDocA/qXwxJjThmf6K
	 hht5NRMlxCY1XBp/1XhzrUweqgduMIbA/9Ox7SwjcAZeF9FJfMVWl5LgpSVMjMch/K
	 4xKnMG8Zj6koUEQuzjJTe3zHWtMoh33VPK3EhkHQVgDBJy3cL7CqP1gNYzXaNSB19B
	 syKDJ7zNBSRAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FCDCD3447
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824025368.21384.14243143600572226560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa827c72388f881470597d61a83fc51e5fb6b2f49d906de06a90bf753372beba
Date: Fri, 08 May 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778240253
