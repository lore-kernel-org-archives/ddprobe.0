Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BE91C03
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF56C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662853253;
	bh=6qIrtt2HM5nyHk7hqLHvwUp1T7bU3B4R08+zXVlvi9k=;
	h=To:Subject:From:Date:From;
	b=hfbwq824UOj33Va3wc9bfuPG6NO+5GzG2GmbfaL8yJgAHidWo8zVxhTv2vTDSVhZ9
	 3KLk6/a4Jrr9wip1q4og351xiseXo5R+rnyjzt78ZwggJgWOP7Hx5IsZdGkIXbUSYl
	 4+e2YgYB4Ub6zs44tWBFA9eakhAhEwl4aGvAkIaQX8M/njOgBMDRGohMb7EjfZpeFl
	 IrZQYyAhtasTr/Ye4J014x/r+lD5SrJSJWG/I9piPReuvt5akH4hoixoftHX7GmjUH
	 Jt4RgWxJN0ci1iv3mGNtujP7dmCwbqII8PbHD/GRd+t2+s759NBzThgUBR2GJTmycs
	 vjld5gesHYvSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C6BC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166285325332.16578.8804238190270505496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3be20294d6e085056500f98bebb72054fa1d581919cd5f31ac038ad948d32923
Date: Sat, 10 Sep 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662853253
