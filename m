Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C011FBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A010C43470
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664664053;
	bh=eDc6wVBVOaAGCEorlcctt2Sk1jow48uBf6l5hPREjJo=;
	h=To:Subject:From:Date:From;
	b=T8i0ndYbCTp3+Ykv+psMRSf1rMw+ZaRZvujnEOkzJNTYCNORIRNoJhrhDDWHBBopJ
	 PMpuLt5rUFdsWjRDIP1Mw6aCVCU9SH6XY0y6sctkXtuOCs6IOTQC7KUintxxYp3qMb
	 uoqWKSbaivAlNSqmvAproZHFQrJkpG7V7Z01mYXqT93nGjbPdC5wP3BNS9u5+suFXY
	 wu9TkVOWM+vutHFofsLBkcaTAw0krvXt4MrlHRndea3hToUtAy+tpkjjQ6/hZH642G
	 /MAnzYRZmETs9MsItmKmBFUlaEVLdWt8urPxH6dJNe40Y40zjliuSRYcT89nNOO1Rc
	 BT5q1lFTMRoGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E646C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166466405331.2336.7778650084567503693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424c444d05892afeac8ae6905772715bd4a1222da53975a98460130ad688ec29
Date: Sat, 01 Oct 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664664053
