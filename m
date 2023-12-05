Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11432675BD
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 16:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFydr+mV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80CE3C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701793697;
	bh=0o/iiELR1OiP6f0PPZ5dU07NDC4jOm/PGhV3bSApAMc=;
	h=To:Subject:From:Date:From;
	b=IFydr+mVU/9nCWk2m2nhjZoxczoy3xclvmnicWt/y/TKojVCN+I4R+5489iu2hL/+
	 khdQ4bN7lyx/GbdosPjv3VyX6yR4aKQPsrGRFXba51Z8NvamGeym166mhmbNZCE8vo
	 LMkDvI9cofgsO3wlQcpsiYL1IV6q3dOQkOI66EYvdWbzn8Sn7FMC6/+Mi2IrZNnFNg
	 AqyBcISfvwJVqwHDaNdl7kApuyHvpNI53hnQDgWYBO766UIgiMKYttAOdeKJMKGWTH
	 IWsvjgy+Kx81+LX4A0OvOLzeUiDlQhanRb4kxRnidnhdmD3RL5ssWHWiOyLPT+DI79
	 ILHgei+E6bs4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D2DC4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170179369640.22661.8630118783263053154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df38e6658bb715fa03bf1ae112955a9945d2c6e2c71f89c387e30490da6b50cb
Date: Tue, 05 Dec 2023 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701793696
