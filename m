Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CCC1095C
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 17:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE986C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 17:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694021648;
	bh=pnE6g074m7xqJb8LjEx8Q8sBRGDj5oQO4BnenMT1MPg=;
	h=To:Subject:From:Date:From;
	b=UkA/5GkR5rQFiBuuCQdDWy560AMMer3So4HQm0HrlBftgEn1Mf0isvqVgpjhOGC8y
	 mzRQTc/oqVdRDVsR/5oS3+hqGXDz2gaygD8a0HTYQnHmJzISxrgGDM2ap/qXV2g/08
	 EsuDTEFuNIeysRXCy/xmkobdrDWa16iCTnrZlyvbu2DGnfDKh6ejr0e86KZo4GiMPF
	 y1E697dtLojy3AURkmA4pNCusTCOIjt6BX1nnzkr5NaXuG2dm7dw54LtFOd4TXI5jc
	 18woWS+Dh+RwAgRZCULAqIuU2CI0iTwY/zMAJBMAe0HzttRSNWrqTxb/LRKMEjqtr9
	 UYpAsVEigf3AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A364FEE14C0
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 17:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169402164866.5179.12830866391564136732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44159bbb58bce5055426b16f0ac2a835a5db770b4234a6c617f929e2b1ceb6e
Date: Wed, 06 Sep 2023 17:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694021648
