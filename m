Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3304854BED
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzwZnxGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 925AEC433C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704731896;
	bh=kxG9MFEYx4MhDDNEb1e+W5ZMBQ9Vl1Av1CRlQLn9APY=;
	h=To:Subject:From:Date:From;
	b=gzwZnxGzVQ/Ic2pFLq0p13TL0YFKXtHLHYTu7cA/QHNP1DUzz615WOrmx4A+tIwNe
	 aEd54RhQlHuUJbL4Cs7iQjUdDTZgYBCidC8P2UReN2xr576aAtghsglcNWCkax/h7m
	 JM00jIZtiGt6LSh4Dcs3IDYj8EsOenW0ifaehF0AexXPqD33Yymqy6PNokivabb8Y5
	 DOVIuo1pfMmfcH/vaYoO5cdKrbim9g0NPhgkqIaXY9P8TvnoZn6KkbTGPqGtgTY+LK
	 S8wKjEUcrNHW0CDBu5IBBnz83L+bQ9d/bgpijGCqVGWJKbL++QYQsd/2a67nMU618Q
	 amm+cg/q7mpeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7400DC4725D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170473189646.572.16608852559102112979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a09a8f7ac33ede5c661b492a3d668157e4943329b37b70968719a3e1a2783718
Date: Mon, 08 Jan 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704731896
