Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B2519E7C
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 21:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AA65C433EF
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 21:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685570046;
	bh=YDSeo/wGgHquC0yTAB0EuFK6Okd6D9DVBn5lqE4Zo40=;
	h=To:Subject:From:Date:From;
	b=difJ2gdmh8auwrT8pTu0fcrYToW42PAhKPlTxgTv0KAVRQGIs5x/aB6ZxNLHzMUbf
	 gkrrRAUWK3k51VW0GOGsOeH3DvKW4g/1nQMf+K9HWWYFTTgpq/y5F495VWfBlExREb
	 wtZrJmhcEeA0VfTAno89J/UPhFejqmRv1aB5jh4DwnTg+FZdAf70LNKTTWEon6EumJ
	 Uf7I23rC0xSkvpfoBroExJVknHccpADZhOcff3fOax81ABSJncseInijYOfBWdt0Xe
	 +RinLsq8el1XsNCmUp0lXQq64dfndu7+h0uYPmvPl/BMKvaUd+fHd8ICzw9qcWxyaB
	 EEpdaUDQMbseg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC56FC77B7A
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 21:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168557004583.21353.3527247045081388837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554b3b99e7dc331250d3fb25894c8217b9b0f95a1e35e945c9099a24bb094275
Date: Wed, 31 May 2023 21:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685570045
