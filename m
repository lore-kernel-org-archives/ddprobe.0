Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83722F38
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FDF0C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667932854;
	bh=bYlCzPZsgzfnB2jjjNjn7CaFUbPowt7moX1LefAmTRQ=;
	h=To:Subject:From:Date:From;
	b=GuFmKDBbzeWBZGppiZbiUJqqCQPUjF8VaJC9n7TKmclNiZNFAmh0yLBrVXaVIKpSq
	 Jnti4Tm8tB9YOQwIUScCavbMwKwbspraWZNsTdQ2a+K5rmSi+nmPitv8htDVMQ8UKK
	 nFWU0ewVKeiOMLe1RrUqLjnLioQnT+4jK51ralh6rVZhyOgu1lzCh7UAjByV0kmCvC
	 5JAtOKcLGKZXpY/hk+5LtCB2Cn5SHTAm1sm7NtzkkVcuezpXAdUhEq/OxksoMSwA1l
	 kk+sn8BzIy1pX+6auyp8CBUC8U5FGAIGaHEFqbncGtlBxe/keS2GezouIJMEH+vNud
	 deAQNZsvvdDtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7522DC43217
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166793285446.16643.7434558744908410616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4436e304e80c17a71371695b67fbd1595cbcf2fe6df72816639a520a70bcfc08
Date: Tue, 08 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667932854
