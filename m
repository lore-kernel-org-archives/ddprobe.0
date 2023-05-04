Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7217F399
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 00:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12160C433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 00:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683159666;
	bh=0KSev3DLgwzybX4ygV18fv0kuAp9m/WrZSXcY/gUDAg=;
	h=To:Subject:From:Date:From;
	b=jfgrdpQjG1ZqZ1TRBBawuxFkpPU9OmEcxhJ8gY5NF60eFa7dg5uM6UFTCi4cljGgz
	 yve1Pq64J7KhlFShCYKQbh61jVhrN4NElTYtH4l3ELTljURoMfDogAz0nOM9BhYo8c
	 6OEwMsGvhBXEtYvZpM7m8g53qOfP1TM5J2ZfGADhiuB8zAB7YbiqTiUMZPJ3imv7Y4
	 Xl4I/5Is1SzgWETIfKG4yg88FRq1utXzVlrdZCf2iiGtgXH9RjanCUQJiiIv+c2MZJ
	 YAcIowq71rsR29VPty4G94W87xT3c/TCeaMe4L3ANsiW24OVeDbC4tDzEyBB0VWHEF
	 ejVM3bOtn8NSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D06A6C7EE22
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 00:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168315966584.21809.10597854612399191098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c65aad0e47d1c7318f70dbdf08810d76e8dad6fccd6ffd45d612cb0872462e4
Date: Thu, 04 May 2023 00:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683159665
