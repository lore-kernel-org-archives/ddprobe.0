Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C341B2F25
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 747F7C433D7
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669302054;
	bh=0uKkigNd8WYrCYDSfRYC9qXGHgcI1NoDTW4pvrsVfM8=;
	h=To:Subject:From:Date:From;
	b=HxiI/t1VvmYb5IkKIW2Zs3U2zxigp4eZ0WY9TyQreX+Hd0JfkUAipKMtcXOmQJfVb
	 6xyS/kgLFPPBmSqaYDiykcohE2NdEYuJeMA6i4w4WZVJt+dcLtB3oU707IU+cTN4n1
	 whNLEXFLePapQ/r/k5Efne6ATHjKuxVduEMadOv+yNnIpXIMeZ7h2ZGDI+3Xasx6hI
	 ANTa+qjMDNPQ1c50Ecxo+dL8xSBuGYhQ8p0KCcKjfD7qRBYnVlbHvFyHiBdHdyeoEO
	 r55E2fTnIDkq4CjdhaKKOlJBdBGYKI1pZMMUdg/HrHNbf9gj1Wb6o9wM2Ul+YSs4B8
	 3HUK4LSS6x7DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 579F1C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166930205434.21107.17561156750471107540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db6acef3266fcd9027c0c10e86d62771699fadbf4defe8af0e33061ac92b93b
Date: Thu, 24 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669302054
