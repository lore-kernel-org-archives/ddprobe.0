Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6310338F93
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 12:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FB7C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 12:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695039308;
	bh=hj3f+uqa6laUv3MJefLKFBfrMGZPFCwaQNjlCgRGnTE=;
	h=To:Subject:From:Date:From;
	b=Oyg+NxcPyTL228PaFxUF2APcynbkW7WU/wMDQfwTHBk05cDIguUKbcVFGvjCaUBUE
	 dwXXU62vsH/le1rmnmO+4pcrD0K1i3pKpet6wrbkVkYZmhHdZuSsVwwEF6nV4UotNs
	 /X6teFWKIpaWnhJ9+wjwua/dEo/Th6YqDZv/lhcfFo1FkOecP5986HoygDUbL2GGrg
	 9lHY+AKvD6emxXNNMRTZefqjcPuX702elcKWl75m537QVpmjQvs7GuJVKEOqPIBBof
	 eJLi5VFry98soEI7U4OYEQWE5fYrBB2IuG6AOgZHjx9FP6OHBMmRnvd22adRoEevtr
	 i1ChcBco0U3Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A646ACD37B0
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 12:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169503930867.1577.6717647784921801448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 099a4f6ce9e021042736e2a73b6ca46ad30b180d2b79664187321d6723b43754
Date: Mon, 18 Sep 2023 12:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695039308
