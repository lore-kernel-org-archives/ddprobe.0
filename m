Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F10171AB
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 13:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10CEC433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 13:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690465328;
	bh=/0UrY2MeE8ZdC8tMNr9idY7tACj+NfE7qhcrlBqFOF0=;
	h=To:Subject:From:Date:From;
	b=m5/nTC93qRY1IcEdkiTJYGO1DfyIdFsNFnv8HIqpooBoruQlNj1Bbz2D3Xt7zPsfE
	 kL7Dal+8bmqa2D6efMV5hxygjnEqcr1WhefjerzpLPIWWKiwX/+SGxUv9+OpPkSbPb
	 d8d/bVd/jiGiSu1UbC23eLixRu8Iwkrod3vp7q+jZ7ejDpkE8BImmEDnF8KF799VOY
	 kUG+Rwniqfh48cD5PF0bK+oVzvq1iiAprlmK+uV3m+OaePKMOkrSV1zn0e/0SUHmY/
	 UtaSvnSwsnerUF3kmSAtZIYSdq36hKH/bLb1ATF+OgPsYBjpRyxqBBADKpelsXudzO
	 3ZxkKhnWBlb6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DFFC001DC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 13:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169046532870.13489.7711864492681553745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647fc86696117fbfa7a0ec642f5fc9223df7149b85ca0daa5b0842dca6cd5e93
Date: Thu, 27 Jul 2023 13:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690465328
