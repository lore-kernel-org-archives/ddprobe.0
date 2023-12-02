Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027A41173B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eu1E/cA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79784C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701532096;
	bh=FCrC1QTOAyIM1m5df1gesmnR1ls6TwIqZIBJMmTFOlU=;
	h=To:Subject:From:Date:From;
	b=Eu1E/cA91/pMVR6Kz/akNBvDbdoQgG4b92QvaVeksi0T/TGzPYSh5iHxoRNBSU9uz
	 +BNAeNSECNdfECEwcbpWELjfkosuRCyuej+CNSDSXR1mQST9NdPy9YjWXPyW9PDZDM
	 xGP2tQr9zzflwPNHOaQqWbAK8SxpOCVAPVZKxlF/t7kRU+V/pIsOgkqRNa4X0yPeMR
	 w+3DVRreyvY/bxTW+sLt68nP62ELGGkRWMI7CExT+B6QOv2Bnd2+ZW0pKvNXSzRb/u
	 CMCwYkehXRQVTP0WgOSVKo+0/GvgafXdvFoZjKpbsDjHwxaso9PQMFpTHLEajHiSIz
	 G/LW4DOAR937g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF5BC4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170153209637.30505.9303037985589125668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339747aac7dd822bc95546c9c3804238bd1d37e9c0d91c4c548287aae2d4b9d5
Date: Sat, 02 Dec 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701532096
