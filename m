Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67473C02
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72023C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662320453;
	bh=W0cUaFis3MctSYGmPAT8nLFC1L99GPfySA8Pt6FEaew=;
	h=To:Subject:From:Date:From;
	b=K6NRc+t+KOq3t+Dr3HITq27A1od+2VY68kjR5dd3R5HNxo8HZfltbdJPt+ou/4ev6
	 9ZPzT5/VFrPNHqUZuwrLcFSOLKCuR0xodpW91GWAcVBaWNsPK8kB2K5Sb5rlXNa6UH
	 NSmedqB52EPm6jUSq9CHH0OWEUnCb9sBBBA8Cruvbmm3cR7GEbXuh0fn7grq5uuguh
	 JUwLQSFITyUAUxVm0WQrxLq1wsL3tC+RSCFVqXoBdkOBEgzKeFBvu8xwG4oq1Os3Ye
	 4bCU4yXR5taV16bLb6Iaej4BPq0wpxUnINL49WQfk9ynUnv5fZZX2xPErnMDBqaGKe
	 aPpyl/yLci6/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59BF9ECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166232045335.8438.10551658727471780736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed1e134aa10caff04429cbe7c5be3f257b907eb2c8bf43f8a12fd62d77b58f2
Date: Sun, 04 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662320453
