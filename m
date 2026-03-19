Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4EC8401A26
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773959694; cv=none; b=cQGSBwYAbzCzHamLh9DiMJaSuL8U5uo6+1k90xmnnK+a/xKIFqLPpEUi0fpBhXnp+H0SN3yV/yiueZCY5OP7pKS4BvYc2gV1S0YK/ZZm7nY7DwTRChVLrw4R82kiRzv6WECiwo2KcbFtlAE2rR11rdz3mkyiyp5NPrc0r1/TkLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773959694; c=relaxed/simple;
	bh=pTu5G1Qa1BxJw/shJfcTOAC3KMNEe3yOy1k2CoIIp3A=;
	h=To:Subject:From:Message-Id:Date; b=MgbMb7oOmG/QUv1cPckwwv++NJxGjg4cNruA1vxQR4XRueyp4+44D7wE0JSktUvFiZBNrFfhyLa4q2Txna9rCC339WbwTDgLe89aC4qbtXx4DnLb3MNKz9JyMLeM/4ghQ+Hxpyw/BEtDLBD4f+iI/8iHyzmxgAiURmq/o3EosAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7jffdFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7jffdFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD2DC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773959693;
	bh=pTu5G1Qa1BxJw/shJfcTOAC3KMNEe3yOy1k2CoIIp3A=;
	h=To:Subject:From:Date:From;
	b=W7jffdFrK8K7blgEtLqA7LDsgg7Zl+JUdmA71Now3sUUvqkh9M7gYEAQXoBGzKSZa
	 pjyiRelZVzw6sIiYIJX+v9JLNeADv7X3wogmudmRhZdwh+1NcyUHjLcTJNObGyTH0V
	 ONyliynQi1c8Yd1SiKMQ0mj0Wpx0PUxgkQHM9NnUiZc31NasNqde+fXJ50GuKlusq6
	 pV+U4xqjs8Ay6PSDs8RBi00N16zawmuqNR5tGmfejehBaoKdivx/e3esTIsD++xksR
	 DAN/7tF+LL/WSyUg1St51RP3I16trORAoJrw+bx1Q2aklAOsASOUcjKH/mdQrUX88/
	 S/ArAM7FqonrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC75109192D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395969358.16045.1582952164613534060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd1fdf1d77eb448fc8bc4be23c641b93fa4a2c72f0f94957cbf39bb2d04fc30
Date: Thu, 19 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773959693
