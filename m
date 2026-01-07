Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7101DA628
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767756234; cv=none; b=YFgiVhRErVwZgRt9nPjwnHlq8RaGeB6gZA0W1hwr5paN6Ln5pBaNnzmXN0UuFDNFhB+N6R4zJmOYJeX6298zy+tLH3nOqWtx5gcFzaoXL5oDIfxm8Y4byaiWVceLRUCUuQg5mt1InE8NFLJ+DRkeCwTXhfJ97QArqEq07xNhUO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767756234; c=relaxed/simple;
	bh=RvS8sn5GqRkQwZ+fK3IING2Kv65w4YEEyyjOHa3Hadc=;
	h=To:Subject:From:Message-Id:Date; b=QaCqlBKx3aKRLGwnlbVQlD/OTxENGMrCtbQhW3f2HcM7Nqkh6AwniyZ5e9nUh/ziOLRjiHI4+Gba6ZcQisxCh6f8FGYEZYfyt0CKOL7ubsLvHYzNTth+77Xa6PZn9xCbA9f9JjFhjMnRoaFQx9rTAEbKhZ8VBmLgZKzDMJ6qt+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxXCLkpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxXCLkpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB03C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767756233;
	bh=RvS8sn5GqRkQwZ+fK3IING2Kv65w4YEEyyjOHa3Hadc=;
	h=To:Subject:From:Date:From;
	b=YxXCLkpmdFW/ileZXUsdZYod+pgwO4tf4BJRv0C0ye7KGvgvGXRSnQdjLbGhR3AEU
	 VSpQdbKgb89/fxLqSNiz3cMCPeyGUFFeWaQZkMK217tywJ7Jbxp8aaegEcl5CE/9XC
	 E1MEAar53d/RekaebOKyjgRYN3GpANW4xNsMf5Cr+m9HeH+WIAARpUn6IVUvLtJm8/
	 3G2A/3O2qoTZTNakGIu/n+h2jlYt7Txc+Jb8YN7GbS6RxgNJPdVY5KqVMNi8VVo+tf
	 si20ycKoqiWroiHZ1PeNJwxSd5Ng+6I6CIhFqUN/FUQC3eioYxG18IptWAqVq5zaJy
	 l4O8Sv+zwCE1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4ACF6BE2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775623358.31344.6538925584069830843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20540cb12185154165d8912b10f62da10515d27e2941169eaa33a1e082e6ed15
Date: Wed, 07 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767756233
