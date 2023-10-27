Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476C1BA50
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p18HEd7J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61D9C433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698406696;
	bh=e08GLhTHq5sjKQ5MEzl04vLF9Znce97h2vXsNFgpr1g=;
	h=To:Subject:From:Date:From;
	b=p18HEd7JJUJHxLDtGXMmMpN4IF2/e+J1G3Kxsjq8TEh/dl52oJ+LZy2Jr3r73ixmB
	 P/XCw9DEENtmsPNfkjf7tHf6MsPDaXmIeVeZps5KYleLaHXWsK2XRFRwzKFPvzdiT7
	 xEgEvez2vocOHKlOy64T5WcZrusMxBAIVdIywKLO0kV3fCTBgutj/z/Hb2ytB4M19B
	 bhYWioc1barkYSp7xjyIs42A736TVIoXPpCH2qziOJtK48GzLPGTfWAqRZZlBm0Tfv
	 G+9Z811wd+qCGNqva3yMHLaAEvOgKJ8NwmqJUpW9wAZ9q4Q6Ou0y0wBwx/99nr0fqe
	 67RLg0ub7X1VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85096C25B67
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169840669653.20890.7337610325887985377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4d66f6b9c9e1367e409eef548497d7d028fbfc1083deb858776ec1df1e2880
Date: Fri, 27 Oct 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698406696
