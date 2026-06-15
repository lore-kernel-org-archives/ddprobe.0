Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4A13321A1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781557594; cv=none; b=XBNERFnj8uD3Cm7EH7v5Yzdakn7vKIZb3IU471Uh4zAwRdw8h0hDo8WBsUPXO969An10Idd6jE6T7d7bIctFydWh6qF/D7t4//E/kGHd4Z1GoGDPYn+4ADExOfW0t7/GMadXIAeugK1AW9+xq5qxbxGGMDk/WS90GWKJjnipu+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781557594; c=relaxed/simple;
	bh=2z7sU73ra3jLv7LrqxVix0cDtCjiiKxL5G0kN/icOQk=;
	h=To:Subject:From:Message-Id:Date; b=MHz3L7JKiX7Inrc5yX7GaiIOtTatYJzAzQl15oSh5IeZjzUxAzCt0pOwoZjbTOXFPJ/DYlP7JdMWEHH0fI8K3jYBlR903h6k5u+JGzle9fmkWYhI9oe5cmdKGbTwyNsf5HBpR21Ru9GyS4+dQi68/yfegHrWkKoU7ABbPObrfAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfV59OBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfV59OBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D258CC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781557593;
	bh=2z7sU73ra3jLv7LrqxVix0cDtCjiiKxL5G0kN/icOQk=;
	h=To:Subject:From:Date:From;
	b=QfV59OBCR/WR30W7W2DczI1qQY/Ts2xG64zKtx//JUUdtTAld5Ees7KG/IZ4246AC
	 lS+MZTIme9Y1XpPud+qHrfQftWhifMx7VR1GJcEDJQHqcQkGaW/aKJRbGW2EyxmZh+
	 eyO5qnFjrl/m7/TQx/BmgMOc9/zdm+lIjGjgiZTl6oIewa87EZUCZlhnzn6ihE0JKU
	 mbja/kazZ1Fq3iy3I8OOHOzdjPyYpLx49Y/h2Xbv//BeWPjiA7IytCNZvDo+J8GZbw
	 CpFm4YBytXb5l9z/RrbnJNM2UZUxHk6E8mOWpwJkhQ4Q562GVJeoeR14x6ND3Hn9vA
	 6B3RLzgpAeNCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D65CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155759372.22867.3345626286790761708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ebdbcb4c5816856e60dd070f98a9708fb3a0dc2fe6c6a4fc3d106aea07ad490
Date: Mon, 15 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781557593
