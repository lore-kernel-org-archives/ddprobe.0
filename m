Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9E83EAC75
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791994834; cv=none; b=iyaF4j6tcA9IwC9Bs0ehlO1BNQYQ9YIEmLAITmlIi+m7LA+qBlyCzvjw7kCsNLiotKX/MhYftUGQqqkpiYzp+cm45WVzdRPC6kY3xrV9ghsFEGiwfY3zxZlVbPpuBQgoAygFaYUDP7Z/YrM9AH8C1vvkokZq0y4kRZRWAhz0JbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791994834; c=relaxed/simple;
	bh=DX1lN0sKbo4A5Uwiv0Lfser60+mLUdyXmVbp95MLQw0=;
	h=To:Subject:From:Message-Id:Date; b=S5ZRnDDWa+jnQRgGfSnofY6PAKdxwXrgrvy6Bbn58Y1/JDFq0PVX0DVogTP6Hy6M+I8vJzobZeF8zg0NdWgQoPRvhoxUZLphjo4sA8mCEViO4Zd/nxBBG3x4uLzEjmcF2SJ3ePgHd0rfN/axGRD3WLTrEP71RDCtJ6dpwHwTLXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaiaFngm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaiaFngm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EC2C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791994833;
	bh=DX1lN0sKbo4A5Uwiv0Lfser60+mLUdyXmVbp95MLQw0=;
	h=To:Subject:From:Date:From;
	b=IaiaFngmdiR6Y+0qqJQQx/HgryQLxDkXudxszGzK1zv4xi2TqJon9uWaZQpqsS7T+
	 u//vESAVKtgHtkr1l9koc7nq2GeCtdP8apN5UHhJcNoQBXkxQpw5RboBY4oCNIPD6E
	 AXjvdx/bu0qHdj3xh62iBpyZowbLZjWxrKMtyfDB/T/OfzamAB6cfRamYuRBiudqRe
	 2W/F5T/C+8wiXnLN2K5CR+/d6z5oJnF5Wh97kqJ4XI/27cr3qUSKv1mWKj90EbxkDi
	 LMRF5zQP/h1lZ7yWZqvlRQeUl93O7vmKpvD5U9CmUjGckmz1prMhpAA8E/gdB5NxqQ
	 eAcjGYnFyHhOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAC3CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199483369.8668.2725326549331231600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae08791904e42cbdef5ec171ecd4e33873090daeafd35412bf57806d819c17a
Date: Wed, 14 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791994833
