Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1173C35
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EDB0C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662370853;
	bh=ZAYdeVU/rAk6M/IicYj3U+Cozs9my3QD1Jk8OMHaPJA=;
	h=To:Subject:From:Date:From;
	b=WQXdOmmXmAmDHOK85dUm3A2fvbpjI2k26Uyv3jGS9fq+Ol8Cn+CZzWAhu4BVIj/tj
	 gEnD6w/ypNEsWXjQV274uVxXZB+rLYL90zQVncfp5ugE27BCHXYQIas2la2BbJM7Fb
	 k64Ny2TLneoBgCZfSolk26KgcneiLLaWNTqZHRxZgo0Zm2d6nU12F7n6lJ1giEkezF
	 klAfFZUI2aesxn9pbk49VymX1f9Wl7aTkKnterDxTaXs3PdTHLBg9GYPl7yythnY4z
	 48N8Z0S3M94B+PzMdGvhPihDptP+bgCaHJVEtmU5xsDfp9kAGbJTTy/sXOb5e9IIaf
	 AyVkElZJPmHjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565DEECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166237085334.25798.12411925908037219459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99bad4aaac05d563ade2e85b28c35158cb890ac26e225e8ec0bd93d6c327020b
Date: Mon, 05 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662370853
