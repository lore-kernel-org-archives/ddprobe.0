Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBBB3D79
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLSyIQ8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2F1C433C9
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700714896;
	bh=H0joYghsgvEep2mqcczcp0hvUsG8qoertcJWIufssc8=;
	h=To:Subject:From:Date:From;
	b=LLSyIQ8jigcdjA1eoWWhkWUmUmJgJu41ntziVvDgu7Zd9coLVrnObnuvb/xeYwAQI
	 ZKrK8hdYls7fqWWv6qdotHzAcCX5oSy1O1Df+cIOYAlDVOW5A7Q5FG4wPM8fZyci2Y
	 X63re46JwvfEylSM8B0UDxuDDJlJZ0+y7Vholf+0HRVlJpQkek7dgsO8iDroGicYJV
	 8efBbpC1l48mpBlzFIo49+fvAvzynph7I47W/DRoz8wBn/ZYLka57AfBeNe5bs1UQH
	 2TlVyDKA4IA/yQMQHG2grENfr86XaymW60mSAUCnFDnb+O91K5K693o+NmoGO02ORj
	 3RzEQEsdr12lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD1BC5AD4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170071489638.12343.4212230456582763922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8205a9a6dd7d4ca1b3c91e545a0c122b1034cac1b5630106dcd9a3ee117193
Date: Thu, 23 Nov 2023 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700714896
