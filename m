Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B048417D3
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68278C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664026253;
	bh=n/Ud0lXpovlNAHbJXRvBapM6NQYG1uktWWf6MwKxqsM=;
	h=To:Subject:From:Date:From;
	b=PV2nniuUFKQL4CfgWTxBYqbppTERQptXUy2IoGNNAxSH27dxj3oqWImIwh8Ghp2Mv
	 TVPNBsQj7AaOI6zHEdJ9q4EWLEu6QmZBSOW1KkbwtVHUkEDkYem4xyq5z7HS5g71jU
	 KDxrrd1jddNcMIzE5Lrbd8RtOvOgjYNQjEjUM77a8MMUyesjNwJ5+7UKIb64ZNsZ25
	 JuKiHqCrQGFPgn1A+GPswH5HHnuKJrpa8Vr6PVdKp98XuFDReRWdxyb3ZZG8NWmfbd
	 NufkeO3MwZqfCmSCIHlikJMmgix6AqU5IUnp2VX8sW1ec4XQcCHEjuv07HBVbluteO
	 x8Gv869FUquRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 508B0C32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166402625332.25178.8487918247657659816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c0f7638ba73734c9d4c8563f763da68ea107f144247fec50c39d2600cae0b1
Date: Sat, 24 Sep 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664026253
