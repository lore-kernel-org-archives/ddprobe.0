Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2264AB644
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754092794; cv=none; b=gy+0bOZO2tKprVBpf+RJwAx4N3Hi93yEHf7DgDh8+ZOkWvTPDe0/4IOuq0+RChKNjn88dvLo3j3Nz0961xR9PkhO2I1oIlgJUD0BA8zGFvG6YsIgny8xRdQNdYsA0grgH4/wp/XA5xpZbDDR/yvqocIOTN/eD8vyc6Bktd5cWic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754092794; c=relaxed/simple;
	bh=sP4DyrjI12S9WpddVxJ4DjBPck5xza4MQ0ny0GRtTLE=;
	h=To:Subject:From:Message-Id:Date; b=h3K5s6hwrOyBXRC3Ls9AoKsoIUX6p+0rH0rdQWaHKOVxCJbOLyxNBdR6fKca1fVKoM7pt6ZPS/pZMkSBjhc3j7+DeynVo4EwFCc6qPMOhe/UHqa6lYLPi5KgrjEJWVVLUczi8NM+Vm6jW3+Eqn/155FYdEp1QQ0XZtiqodDfWag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9U8JYZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9U8JYZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D93C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754092793;
	bh=sP4DyrjI12S9WpddVxJ4DjBPck5xza4MQ0ny0GRtTLE=;
	h=To:Subject:From:Date:From;
	b=X9U8JYZww056cGNDyRUOgqoZxFbYkvwl0xMQMNSvhR8ObHDAhxPbe2dKuuEETT1dk
	 9ZPKqDoIVPSdHX9Iuil16lZSNs/Yk/CZpf+6QSQMDHnQvmesgJ54GNwunK1DigdoDc
	 i4z3mAclq8Xx5zb5usBStPa+HN4tTHk7ivDx58UEpQ7C2RvRSWmTaBJV/HxxsPOB6k
	 zV7sMc0iN7lZNVUszTWbeAMrFTxF/m8tPj61+rp+YbdFXFLBxjuoenGj1IW7W1PmWG
	 +kA19KnJCOpxqFjO3AnpBL+wsJ3cdzY6hX0VloHBXN3eH+Pd5WzALJ21pC+kA31lS4
	 5qdJ1/QUR9rHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9812DC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409279361.23237.8669696036332913886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5096715b34460a3e4f6762d22afdb5da3769e568ec8354ccf1cf35ef768f4c59
Date: Fri, 01 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754092793
