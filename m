Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1444C95
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71567C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663327853;
	bh=FnYXb2vm/dyQmT0yZyoWqJOKbxq0EoR326AHoAQ0shs=;
	h=To:Subject:From:Date:From;
	b=BFMbGzTv4B7St7o1ZIsqNIJkBI8Ovw2EYUp/m1qh3EpY0e/IoAK2olzlXHv2RqPt3
	 pOkLZD19xf2AeNVqBb7an3B8CuJXIntFhi2oM8GMGadciwNGxT/cBplXFyqQ3/F+z/
	 gqmTkyIbB4YGU8+mneMMDSsVKM7lS3a2KJSPtxBFfkCfGetBAl10OphMLQZJz9yL6O
	 d4ZYDMZGvGNHB4UVUWJZTmNekwhzztwy0xIC50Br9nsAbHj+kaPldkkdlBOkSrHkaR
	 f0pyeipf6jTiT70eCNKthVuLzwQvPtrn1wwh/wk7y+OkaxawIjJ//dxhx9mMYT3RA0
	 pecjmnidQMKBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B03ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166332785335.17646.8636211497977486991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658b7b37664dfc2db10132e5545f3e71a09cfa21f412ba1e4a8a459d382056a0
Date: Fri, 16 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663327853
