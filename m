Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137E71108
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ib59pv37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC3DC433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701843496;
	bh=zvQBKxWIshgqjJP9WpG8QS+u4r6YKd0pWNqQri+vGiM=;
	h=To:Subject:From:Date:From;
	b=Ib59pv37hZtOfYsQCShm3f0spg4kn1QlGrysEMdeQk8Q3l3qDxA4/BwpCFiLwIg9N
	 2EV3qW8Eyr2trkqaXG3WABMK0EXB3psrjnDwXBffP+wxIFYnwR1L+pBD2YP4wdxnJa
	 QJxftH30UXiGTY3D3yW60BcOd7UAEjrEk0hx/D3TNjCIwUUkbjNFLWVMAOFsGEYrhX
	 upwLsx0rSa5palKifF00A+FwBVJuwdSsyUpNidOymxg6PJYhTeb9SZb274kv5qasSc
	 dxTLFoBYOjKwYd3SrDIFL95I2OOhAe3zcYu87Rk2XTEYLdhzmEhgCBidRuAQES5PDP
	 Rgfd43kkp49pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E15C4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170184349636.4958.17418476381063591877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4732f9164c2506c7f982b4cd8afcdbafc4d5765c60be6bbb2fbd8eba9b6f081a
Date: Wed, 06 Dec 2023 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701843496
