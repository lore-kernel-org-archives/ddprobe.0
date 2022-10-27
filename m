Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5FB1866
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D454C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666859454;
	bh=LbSk00/AZqZE9C35L0ojxlxV7pOc++sUvSB9YRRiDw8=;
	h=To:Subject:From:Date:From;
	b=J71h/591kz9WzYWuFOx/SlAQ/7mNFTQIvgyiryB8AALnxtrYLYY1+UqoK0fADyNvX
	 C5lNW/Y7OgrDyStFSNqDVDS/3hZkpAzzMnNf1pI0iFrVZ5t/GGACvOuRtRBLxxpQir
	 oessvmLzBGDmO13pwUN+6/aC8miCJiWyOw25NOmPVQwBXKKXD5jbjXUxp1BNCc6uOB
	 tpJzOX7iYV9WvqL0mNo9ciw515lZ27KL3zhrnjQhVDXFhaIdAx7BIOdP179mGlnoQI
	 t7VDUll4oWeDfqmF8mQH82+Xy2nziIORGE1P5n7LlyItZv6xyjI1Bhb1oxAW/WJRY5
	 QUigFdsHU1p7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5563AC67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166685945434.19732.12383829638456480419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392d4d4959df7b2ea776a204e3ec09ee800a557a0dfb48f4ed005bd54112cf07
Date: Thu, 27 Oct 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666859454
