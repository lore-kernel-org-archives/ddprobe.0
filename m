Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B75933D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRMemnNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9528EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698144496;
	bh=pxi68+OLarDFiLxcPo+Gi1I/qpd3p9lf7LsgrMyzqIs=;
	h=To:Subject:From:Date:From;
	b=aRMemnNn1mwb9lnwX+ooygKWDm0aB0EoDEEh8HYdn60ZeUhdAO35o0LZWSHuGGrfs
	 4dhhxYjCJg5PABpLt0tszobe07zkcNwLUtQFM3ArodXM558oh4lB3u15Ryk2y5JkRq
	 W1Mp6Uu/lzcBLJLWOBudyuvtCDB5aUGYncGvgGesnVVuFtAY7wDRbPkT3hfYgkT4Lz
	 eY8xDg7QOI7/JcohZs6wviVfzJERbboBhqPq7uFvK8Hc3aw+2NMw6LX5CKEOaPyEZl
	 tjIPHyJvdrgHl55K3TD7Zd/qfG1O81ZKntNPD/mDiWVyYXi65564vQ0K/CFh1JSuac
	 4QfC1C5/bu0dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 754EEC07545
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169814449646.22081.10796499237521604345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828ba9157c16dbe30a91fc303791606801ed229c8129bdee8df2879752bec01a
Date: Tue, 24 Oct 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698144496
