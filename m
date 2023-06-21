Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615AD8482
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 06:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12CCC433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687330388;
	bh=tI4ycLn2iGuY9ycdRT4pj/iaT1SiRuBigjeQFKsFeSM=;
	h=To:Subject:From:Date:From;
	b=KLCfwv1nfz5VG0YJkh0RilaqekJiRdwU2YMXAt4GA7Qnk6a/r4H9vXII0fxYlD8iv
	 HBZjqJbh92MRd8QTp4HTvh3zjiMj/h+bJJKdjByr7xY8IaDx2zE4Meh/braKFwl8R3
	 1X3yaQgydRp3psy81XZ1rxhp2DSSaq793wT8NJjAcAxSVwa9y4ske9PMXBvNGcVHqz
	 PFU9+Yw86vP9IS6CbrEQ7OaH8MHmBCqyeRFhems9E27m2JWLAjiA5/y+Duxs6Hgm2Q
	 7yjDUcTpB7HI3wEO89wutTj2/IiLYeNi6PSRZnL5k3bnnZiulTCJ/WL0z5ut0V8gl5
	 66v4XEhJ3RWQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5236EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 06:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168733038873.6194.6591520315792177332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2fcb47cb6022cb8758bb41feec170c185caff413236d743cf84248bfd9b8445
Date: Wed, 21 Jun 2023 06:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687330388
