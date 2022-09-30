Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1B810E5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71750C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664505053;
	bh=1YoscEUj/Jo4Ph8k5a/6lhFr+vvalIk7w9gEL0tq6i8=;
	h=To:Subject:From:Date:From;
	b=jqTLlDK6fTah4o4oQeaERcRmPnqE9e/+PPUL9fW6BdBtVnowiiXYmDMJpAfnCafRJ
	 Vqjujmt3fwDfOvaTzpaAmvohR0UF+AkpIc0Vh64RyW3rVmWaZk2lkqSkcA6XZDngTb
	 96SzM/bkG3GgmJWqNBwg9Yj1lrinkX4AIwu4T2zj5K7ocZntPvC9Bdb4R+i7AoyAVk
	 MPVrIKXQvQ+9lo25CD6JahAV/By3w/bp27ss01kR+ru/clGOfrM1wbuzvDTJ9vGHgt
	 NqZbi6Gh9YfrnxwO930HUSIcLbmSmgTC4FoulORmAAYc7CDO/zerfZCx/5RCUHBJhy
	 UbSJTlO8pikkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E45C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450505332.25270.15168350834043626745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2afb6f5e7c661378f85a9abd8f33e77990057f84bdd5fc79cf2b8e3fda9f6998
Date: Fri, 30 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664505053
