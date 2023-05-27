Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE49384
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 04:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06128C433EF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 04:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685162886;
	bh=8EHRVxHJzKZTFrujIj2+aPmPywqWjx8hoUAWFv/OvIM=;
	h=To:Subject:From:Date:From;
	b=C0RmensEHJ9WTPia1MP9BdXg4pT6F2LhlayEMuvSyvUtGUA+NxCBje8q42cUg3S9j
	 4Ez+HHN3AKQqO+FetmM//iksgV91ElqEyW+PwDciLRH3zHjeD2qaSP+QbefaDiyo1y
	 X4AlcFQzn+udxJyCMvQIgSej8kQ1lj3zA1HJJQpsSDFh6PSCzOVMURocRv6U82Lu/X
	 3zTZibcTFpG04isgyxH4sme3Ms5Cm4s7VDdp9at/kjQJcU/JkCieBCLYxz4cjIVYpU
	 ozZNgyjt3jkqoFoEK1Q/xCy99kNzApGdJkewoumGAoi2YdqwABaq1j/FfA2RXZsIq/
	 W5MWSA+JKUDBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB4FDC77B7E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 04:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168516288581.29470.4852234671161117862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b44cd8db4ad16dbab32dc212e63d1903f74dda53fa5565bdda7ece9b3b2b07
Date: Sat, 27 May 2023 04:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685162885
