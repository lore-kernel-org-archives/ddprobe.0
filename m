Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204B13984A
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 22:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHc5K9r1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E83C9C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 22:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697668692;
	bh=O4ZDMkcyhcZ7QdTYzudmhVyjXfiOtIJLfqQjQ19bgmI=;
	h=To:Subject:From:Date:From;
	b=FHc5K9r1mRkqVPi15V21mlnIwd0seHoGpWl2s7+lQ3PhmKSKtiSr3zuTrNAnzKJMD
	 gLk73n9dwU+Pkd5C4fnF8873IxV9wDcE6Jst4At1OY1lXByOAPEixLvXUVIPNHRxW6
	 FYaejyCTB2IrePOtxVBy3yhoct0jHaIgDTK72eWit5TePM9bxNBGBSbDzyxg8+h5nN
	 zqJhs9x+eO/uJ5ids1A65NLDJfm0KAqN1/x6eN5pqaYjt01KfABwsXw6qGq/2nxlwy
	 8gNZa5NTUlM15DY8q663EanPDWqMc3uLtIo/uWQdbNd8bCDnRMp2bKrBWxhx0cUp2r
	 sk8TCrUrnjSEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD79CCDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 22:38:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169766869283.16769.895239046759467481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1042e2faf25dcbc99ba7bae89864327d5bc07b8eb5778d0979836a3c2fc8175b
Date: Wed, 18 Oct 2023 22:38:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697668692
