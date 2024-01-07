Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BCD134AF
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsJHc5zs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89F9BC433C8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704639496;
	bh=5BL9CYBY3gRSGYjull8gTagSyaHG8aOvNol25Cpt3AU=;
	h=To:Subject:From:Date:From;
	b=qsJHc5zs0oPvpTmBlrT7xv56vnALlKZP9cb0o3VUkFDgqPKoEbORoeiqow/SXo77Z
	 vyhgaM3//A/4lrRKiphfcYUbvDD/0Gu6Yc+b8mJ/ienFMtNWswSfL8mwhKlKAFMur5
	 Ifi6HjZkPEygbBBpT0cUlhS3WbIfXLIcq0SpJtx2P2QfqPhaDN/xyPFmotu80qT508
	 AC5RX/XEHOT37bsQGTXgnO7fPiPPsuTITH0xL2rXrMY2xERCZy7deMOdUdEYU2l7PV
	 paiH6R7Bf7Qle8Elg0zGfOrBzmrlBoOdaJev1UVLJYpmbyiND2XuzNcOgYcsjHIf/8
	 HbzuDCN2eHi6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71517C47074
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170463949640.32402.2173514333388063009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac4a3ed1d1331b9345ef0b3075faf7a247d1bd23cd5d649df4cfddba58da9078
Date: Sun, 07 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704639496
