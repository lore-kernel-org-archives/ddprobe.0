Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB598D53C
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68659C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669933854;
	bh=/bVZW4Xt3SZBvUylnG2M/srIGhQsD6TuOuddqN7fdqE=;
	h=To:Subject:From:Date:From;
	b=jHBNUhDYmdhapPZYCu474F8I8t3MEikJVjrjb15f/Rukji4SzrqPbnSLi04x3IldV
	 2+B4Ddb7ZnBhzeSbbCXlUDEbID2qHNABYmEDCR+ZQ2N3nzMKKJhUEGbvK7mhFw2tjL
	 sNFAqXzTS7GoogYbtYrI/WFBe+7vjHUP4v9FB4PrW2Pthzqor3lUNKg3y81ftRJ31L
	 wYtaHi1i4SCvk/BV8K7nvZjYV2kotDAMm4XGkeJ5XCKMmKbHqUrxE25H5AJWv4ANB+
	 0Kg1rgXS5sTc7qzbw4VJBiNXpU0IGKSBnGPWujn7UQp023dMnqvU7LpeszkPy1T+9T
	 GoptDO6X3qZxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51532C4332F
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166993385432.16825.192261660325952455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ecbd7faa5101fd4151dbc9a311eff71b183ae86bb306d6e40ffa6c9478c8a2
Date: Thu, 01 Dec 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669933854
