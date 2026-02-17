Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3C433469C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771328694; cv=none; b=eHeHarvBq27LpaTlGGZgJnFaCgD2C9MUeubUx9zZrOuGeJBuELZv2OJx7XcRczGS9jmAUCRDlAPNGZkyx1Sjg3B4IRtlUcuWHQFc8HH0k32Ogr2Dkuf+vqC9Cg2PuHJruAiT2PQF6advlCRdYkowtCxjW89bCMETW26XdUq0LuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771328694; c=relaxed/simple;
	bh=i6QV5x/MQ/sgF2n0eQnO30l8XXQZyt9X/+xPW9cPGOI=;
	h=To:Subject:From:Message-Id:Date; b=AVObmWZzuTxRCL2VNd65m4KpPB2TACpFOzIBiv66hwAPgnsSDfyHuJ5pM1fvFiAhLQgZRqv6NhaccR5Z2pb/zF/nYcp5ogdErYe2HywZiO91y3iii2QRPWKhxnfwjJrfZ1OjGoVg1IgmDDnnGAMxm6NnI+6M/w7Hb3LLrD3Iu2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiD0wBzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiD0wBzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D4FC19423
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771328693;
	bh=i6QV5x/MQ/sgF2n0eQnO30l8XXQZyt9X/+xPW9cPGOI=;
	h=To:Subject:From:Date:From;
	b=fiD0wBzAjD4BaLDbmOxoJxpaJspNnp2/7gz/KP9rg9wnGZOsm7w3ihN+fu5cxLI+c
	 j4qIpdDI8ihera39pEFo5wNE7rVb/qSE5GQKpSvqw79VWtVZKbfwe3fFupcqmGiPPc
	 muNi/pVlEcx8zVvKjFwxUDBjXVCc2eIEHu9LiPmyAAeBTEmXueGHgl23O3ovjQGFaJ
	 oKkiMPLTRvwD1dpPfnvYsFmCxTehNiKRdmVHgQFzfrkNI1a9yDxIjqOK+rVUZmCKA5
	 JNHzs9PGztQeYF6+bryBCDDSy+m15jnPy9+cU3k1Gcg9IdJLNHX26U6FD4Z/uQ36Hy
	 DgiQ/LHooWW+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FA8E68172
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132869360.3347.3298923057284242880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f89d34cf98e2d66bed35ef8e896269e1191fae22207ba178cbdb2ff4ee780a
Date: Tue, 17 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771328693
