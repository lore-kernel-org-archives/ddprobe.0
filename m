Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AF61841
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CE72C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666917054;
	bh=HI1MJgS1trQfMRdHF0HOUpLqKwuYFRxRymJD04z5qIE=;
	h=To:Subject:From:Date:From;
	b=JPe/u0M1F1mxSpgAKGmzFquFi4vqv/9Pd61CE2dO+xVGqpAgRrBvpmt7r6YxJeNxW
	 4WCCes2p8pbx32IdKqGTs+LS7VlEImtb8Bam5x8+5QZYrN3A3T5MNo5lohITvF0h3f
	 VJ1ftdP6isXMI3Jl2lMzrWc4/6CrD47dx+96ydVQ9u0U/3sFKbGNq0pocNDVrTNtZC
	 nhtwDID6g6vS9mwvGKJi/02nwZIDznWPOzd6uOWQ1oGPHMFaQ0SU+R9nnOobWgzhna
	 TYoUmFiLzCzdzQIpEWQ8PvHeCoAX8yj5NWzaPVGO16Ai9XrrxuNSm3NSwbBzBoyQdI
	 rd8bxfz9lvGxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554BCECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166691705434.2672.15615611354994255694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b6f08aa343036e72edbff2e0f79b9bedf28f9e91462aaa3c21e092b97728278
Date: Fri, 28 Oct 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666917054
