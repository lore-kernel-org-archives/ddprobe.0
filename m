Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41807C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701ADC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662626453;
	bh=GEsz1OPz4moa+kDMjbXMQR6C/78PXitUbcFfnavqNeU=;
	h=To:Subject:From:Date:From;
	b=olGqaWYCnMj1sQ+EfmjnMHBE/z1MI6xvXn1IbAuyKSVgFfpkNLBMv9YwcXtvd3Q/A
	 1qqqLFj3MnP0Gn61vw9zP7w31W7vqUevdtUCm8DX54CrQ9+O7NKOUyIU2T+cpn5kQa
	 p0lGpbE9WMLVfsOZ973+4xeKQBVN5V99ZgCa2dFFMmh7hHeT0a4979etHewlOHaJSe
	 E/kDahRoY35f74EQeiViB+NcpIfppjapEfuJkT9gp7doF10bki6vtuS/bvVE5xLBEu
	 f0XKmhlEq16+O4CXq1fcVrkyQSnpO4kjY9WrF6KsndHmTppGIdCIiIbYGVTL6xassB
	 W59XYuyCeisyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50745ECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166262645332.16230.4439961079161548750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b170a9807d2eba4d99b39b955cd3f8ebeeff7d9e0806289c9313ef91a8dd0a1e
Date: Thu, 08 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662626453
