Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C091E9F8
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AEE7C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668120654;
	bh=SzpfLAZnOJnZtwXTbyFhNuuEeJHQxGCePxNjOSNjios=;
	h=To:Subject:From:Date:From;
	b=ESsqn42YVoO/bAVD/hIPchy8bEvg6VPbc+uj6XWLONELlo04Fl4V1RjtXmoij6rvt
	 hQKLhR07to82UJ6jHEhoSJYmTqrY89WJe5AxWXStDPICraWEAHsFoU6D7STMrS/PfF
	 j8+zHW2dVSLHAmHc+rlEWkDNd7mFn7iZ207iItod5QKcTbUUelr4n5NwmKmGyWld0j
	 yQdFeRtQirrM0B1HTvXD5zuSWIsUPCAxnQIj6YsoqfnXjS+zl3MODcmJfU79p2rUqR
	 A6h5r2cH+2K2DgJn4hYkrEkKiKJZA86/SPrUcwbYrCknIMGDPQgaZVuCvBRbQzYAAq
	 HEWmxtBG3RfVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55402C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166812065434.15018.6246853225229054916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc03881a3948317a477bafe22711d88c84ca658cb3b8f5cb30b9f8211833096
Date: Thu, 10 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668120654
