Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041181FA2
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHEW1+nc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8133CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703820496;
	bh=YLok1lxer2ULk0L+V78/9P9UoVUyPB9EDzu3Rg5nFJk=;
	h=To:Subject:From:Date:From;
	b=PHEW1+ncob8OugdKqp526fybE8pA+h5nLa7ILf3PjtyhmBrZ0m6qpIBwAzu1XNhNu
	 Nx6UghBvfY2P8IZ5KDyT8IbGiOf08f3zpqdJ/LbOrf6V3X82OUG/elMkc1d9t47U0e
	 z5RsEXX8HCzXUvItO786UZSw9pd5k7C1w67Cd82gmXEVxJmNK2GARLFQuD9JVqpTGk
	 SoNdt0cBySmE5lkcluHY6wtJT6HDAmVR8Uck+Ea7IOE7liNPkNNm/zmap5g0Y79JqI
	 r2zvak2t2pEP/yQlBWMDRrpS4IGZIYNpUnBMbD6wAyTWaawjQgXMTsQYXaQypyOUqc
	 /lAgE9AptS+xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 683A6C46CD4
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170382049640.30994.11122173769072919076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257301d003475c6356583380b1fe9eb677c3dcf69bf294885521fc0beb9c9933
Date: Fri, 29 Dec 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703820496
