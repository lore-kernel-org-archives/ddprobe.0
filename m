Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBCB1E1E18
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 09:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740562734; cv=none; b=RvZvXVYL1R/SUlqIBXbkyUmkFKJU2dw+Nt6Y0ExnxNv3OdNvmbIO6KEoitrAcwlEQTBh+WnRZVchEcevvT7UP1p3zkPHFDXzfkYfcCZyzC0sr0Xv05ZRBi5e6qeObkr7C7fCtruQIY0rLSbokI7u8j5cy45dLR9zHk1By0COWu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740562734; c=relaxed/simple;
	bh=Dl/dzIlMqwNWNqKqUdEgmRl3TQ7kFK50ZuAXml6gvGU=;
	h=To:Subject:From:Message-Id:Date; b=e9kLE0CF/qnIXIxatK0kPohDECpt5/Lzqr4cJolUjE6UKLZNp0w9R3N4cdtLP2iRKyRJaLtBwvUyWNgolHZLhY/8YkBxU5HQyd7pcrQiyfm1bPkNg3MlD2j5s95t7NgH2CS5NODPV+ikD93hXyl4xEN9FZUUHRXSEaZ758zrqPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bytCTcS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bytCTcS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF72C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740562733;
	bh=Dl/dzIlMqwNWNqKqUdEgmRl3TQ7kFK50ZuAXml6gvGU=;
	h=To:Subject:From:Date:From;
	b=bytCTcS38ApJ4+nilkP2G7f+lxupJcCqQlWN/T0N/AFZ0MbWNEaKX3dMHAbXSAGYM
	 xf91ipAPvixqvwNp6P9Dx9uLm5Fr/veOiBX6qlGWQhZvaRwjM+4p8zs1/6YjSzea60
	 bfXU0W1JDx0Cjy6G2tiFCck40D1bB1wGM6WMDZra+2s4QCYAfkv+9GbAhN10TMrnEP
	 t+xiumh6uUbCkiVWqwc76rZkRYcjA8usLDlJvFtSJ5uJ2ZnBvArM9Vij5DVzUrF7o/
	 Bh3V03zpeMDC52VrVVbuRmgM7yHQqjzM5DNa6/irPiAz9RhpxvlcgM74cgfqUrs89m
	 4Mz7XwPteoP5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97257C021BC
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 09:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174056273361.28914.3354735413847430231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 023384a4ed693524be8540f2acc64fa819af98cf9b76124dff85302a50483ae2
Date: Wed, 26 Feb 2025 09:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740562733
