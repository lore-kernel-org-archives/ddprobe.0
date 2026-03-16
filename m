Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F633B7761
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773676494; cv=none; b=F/yEQ81DgYFQF1gK8Lvj8a9aOO/cDoIUYWXKfB+Q/bK9+Echo2RkzmK+OWoZIer3je5FNjUrFVykSh4WaYrRfJlCyOdEQHsYBbCu2tsxrx0jJZZulMRhkBK2tN04meO7xPf3m7WHC71puknFfKpOmYHYGSxQ3otDTJHZAJ4oGHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773676494; c=relaxed/simple;
	bh=Wisa98vr67K2YbPJzPcJN70KxsEYN6taBUS2E/v5Ivw=;
	h=To:Subject:From:Message-Id:Date; b=c/5jIO9nzRW2dC9XAmV5YqOf8hsb/o37Sn/G8uT83QUa+J1R45Bn5Pe3Fxte9ltFC6DM+xv4r8GBqkz/gu8HIkRUA9WVNPAuETLr2AOt4v95hZ3FGKnMwdT8xJrpefN++bVw8tvb0N//Fa7f0qOqW7Xi9XVHbv8gmzJz8o9lBBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBnNXqlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBnNXqlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEB3C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773676493;
	bh=Wisa98vr67K2YbPJzPcJN70KxsEYN6taBUS2E/v5Ivw=;
	h=To:Subject:From:Date:From;
	b=pBnNXqlqcRpTtacvdE0cQwoe8yBE8ztl8drQkBvj7dVt0jewMH2Glp3TfhdCV4X0p
	 P7lSQgsam4fccDH6zzUHjPNmU97sRrvK5iLjvk5zMTt65yHIc5NAZgGMO/PXHgqag8
	 HwgKWGBPu2aN9dTvhWm3PwOjRpQfPGSUNk0BVkFzcgbifDdRU0mmeafiX7XjXvYfcu
	 Uo7GboDYs5zq7z8icdnfHpIqmJU4o+M+5zB/pqa4Wrr29m6PwZHshNg2PKreKMjjPb
	 KCkpW3EgXSlWGt44Y8tLB+teG+FcQ9B+TnUbCqMCe7Fw4+X5xzvhOaRnzkhrozTc4b
	 NIP5NmUAUizug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB42F53D69
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367649358.29604.4759289771031452527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71b44606d0c261f96627ada34e5d162052cad63aed03c68732c6caa369656bf
Date: Mon, 16 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773676493
