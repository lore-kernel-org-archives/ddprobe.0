Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B26B87E
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6679AC433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665398453;
	bh=hM1gZHi2HxWeFosDzJWX2AnDLarjBbb83OVeGTXOSNs=;
	h=To:Subject:From:Date:From;
	b=n8WSIB8bqIpBY99B2fEpfCzv2NXuGPeFgNETY1XnozjnmCV30YcfHJ7zN4HCmUJK9
	 symC+UQA0b58BAD/9aBPbD90Kp6DDv2rfkOgsOG94Fcsvk7UnsTrJR2pQrjvJ2ARXY
	 U/Ko49JHT5MRaM3Pj7FYoJ2uvAWRB1SvFXNTUjSDvlCWaHQq9Mrv4/xMezoO+W+rUu
	 gxZ+t3bHWwuqnke8zsu639tfAAisDZaHcqsw6tBbdS/iwxaEDIvOzFTrz/H2vZIbnz
	 xpfTxWWJOKw1VEDJEKnemKEB8fmtma+QSkwjdLq5cxDjys5KFC0vuTgB2+FfSwiWny
	 KRHl/v7reXXQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5056AC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166539845332.1112.14490539075250290901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7709609b15a9cd530b714573278bc071910cdd5bbd4428f2c5f962b42fe91b5c
Date: Mon, 10 Oct 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665398453
