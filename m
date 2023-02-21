Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B4D8F78
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 21:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D68C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 21:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677015665;
	bh=KsyNxEUZ62cFg2ywKCwKpzNXICNdZIoFlBfz+y4H6Eg=;
	h=To:Subject:From:Date:From;
	b=YvYU/825WR/NrS+BS68Y6bG4zqYkB/E6MlEatXBLj1FJD/dWQW6mlWmuAP0gGJ74+
	 rXVgINDdilzevXtdSaCOflz38pVeYzMXLx0ttIg1vZzcJSl/ylZnEg9a0cRearr4fu
	 OvqnohJafxxY1NPLSewkJeFZcapap3I5K1jtl4tiDzcCXUpW++C0MHhjfkKJNynrzM
	 8UrEA1TTbkoCnGyUm5QPISX8tNANI6ZZ90Mps6Up3ZaLzHaCp7nO3dOuLb+xch69JJ
	 MtnJ1lYPvpAOjoM7HiMOwhBn9IUFdiidxrMdpxknr1SWvgMBuLcg1deGDYjn7KOmoj
	 Usay6cmcsrUBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54D7C636D7
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 21:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167701566573.6636.1351119226800669971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241f4a10071b255791a412655411d07a02b468704523daa86808fde362e93f4f
Date: Tue, 21 Feb 2023 21:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677015665
