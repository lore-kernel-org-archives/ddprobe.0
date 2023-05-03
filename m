Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACB3DF44
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 19:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06364C433D2
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 19:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683143406;
	bh=u0IMOzEPMzqN6jDFF62+0g1XP/pL7tPjWfJYvveusU4=;
	h=To:Subject:From:Date:From;
	b=hPpV88k7QdL2umOCm/hDsV0LB5fxtfpxi/SWJXUMbpnZHJIoIaKglrp2jgHeqjV3Y
	 NWbqNYNYfriDQdAqWDL6tejWOrogEJitouVwrQ0QxSYLHvoEl1PE28zKn8bRr0PfaC
	 ZgEAZOLoks7RSAwtlmpWdvUahYh7W5QuWwesMDDEbQOlh8Wwt8oBID4MBZPMFY3Mga
	 5KCNQRywFaXwEw7fugXhhYUDqqKF92C4fa+NmfYFGM3QM5UGOnPSbup89swrk5jQO2
	 A2YRZd5kW0zNkwgisP4wG2gA7CCd5VPT3kdsf8fPcmIHnAOmzLEKJ//gVHssKwpwiR
	 zrZzqU3KieRrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB827C77B75
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 19:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168314340587.1814.16898867015549817590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6499fa36865c34366cffc0c67899e3e2076c0bce28d69ce0652d58828aedd302
Date: Wed, 03 May 2023 19:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683143405
