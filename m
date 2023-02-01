Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540A87F4
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 05:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE54C4339B
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 05:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675229646;
	bh=Mu4iwp0RO2c9liTZ1Y3iQHxiwuFr8TLXS7UyBDW9ZNA=;
	h=To:Subject:From:Date:From;
	b=dqMIFlBYU7JclnM+O+e1D7YBrsD8OeP1ch3CO0DhoSPOZlLh5tEHvJtKszc05U3D3
	 oqlleSvf3zz4+pIDjxpIKKjXM2X23WP5TvgmU96UvYXOdf5nPoAsRWn4TvnX1f8yNo
	 ZEyhlktcW8K1i7chJnhno46SLvxNFS9UseRnV/E0e1cVb+MBWMbp3LxTRVq2d4FKZe
	 cpfWeUDf68TOVEJjsh3rm9fEmA1yVU1eGCz295cAqkhqFaaUWGTHcsqZCDZp12A3zp
	 cVUN9KlI1a7BIxpl2vgNSTxRtStRCA8Py/osykuYGiPNVi9qcL5Jc/rRIGZoaKbNul
	 z9QCwXM6tacsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE53C38142
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 05:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167522964576.2260.1018121207130700350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0689cc2ab642121d5fe253f71f8341e4319e86ae5a96e347cce88dfb2f02182e
Date: Wed, 01 Feb 2023 05:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675229645
