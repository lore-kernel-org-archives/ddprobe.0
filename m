Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1801EA29
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ny0ZHGxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B275C433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702774096;
	bh=YUsw0ZtyHLXtwhrPyRJV90zHaEC73Gv3f/wCkizy86g=;
	h=To:Subject:From:Date:From;
	b=ny0ZHGxfjs0XUbHtjOv3WGiIVqT6q6OktHN/dy5swYDczMVn4wzFa09TlKRbToK/J
	 cE4z6Q4r5a8b2D80cA/0MizGX+vIgfIEEsWzPn23o6h7a2uD594GYyQh/A192XZqFL
	 W+0ZnaJvSiT83tiKKTUqkwvv4Nlc5qlX96xrqMTpS9x3VmlROMnMG0MkyHbzFGJ7pX
	 JthmbF8obwENNQrvWTkppDSiXtBwWQEfeQ88kJ+IIT1jbtgEB2DpfJDPUPtH+xJiGJ
	 F//muxTszR49NJ7bs1cC9d//NBPIBgUqAtPWOGOhlNNLzOJKXCYpnrLqTiaKoQUH6r
	 6iqfNGLR5gXwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9E6C41535
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170277409636.9224.8910102241958702810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca12b83b3bb3389d7b37225604aeb4b92f198e698b2aeefcfa8038de18ad0d2
Date: Sun, 17 Dec 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702774096
