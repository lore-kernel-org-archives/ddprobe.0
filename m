Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A7F17E1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82255C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671684687;
	bh=Mqq1d9WOtU2iVtyYG0CAhmRKTFMumiACRy/hKpiN3LA=;
	h=To:Subject:From:Date:From;
	b=kJmBsZ5kvb8/MQvJ0r4bZvozBQCYY5D6uLM2U2OJDlZ8QLr2yPUhUiV6Aggpc96rC
	 0yiuL9SALgB3M8Ei89t9tJ+MsN/NUOX7PVJUaL1syw8mNOtslPXZnFvdIcEq2yYieD
	 p2nLKGhurqFipzMw0bV6KElL34bxyb9N0iKCERibabL1mLh4jtF24v9LUvSepvOnlT
	 EMPs8JgWXQb33FPRx4gJiYMWr20GfRMIrvjWce1dvZVb7N7shBOpVXvmnsK+p7bHty
	 xrYTFi28GIqIl22i4nUczFVrGbJGK9SEeJDkpshHCob/b9yXld/P5iBPXuBX5jizQd
	 StJtlbTl5P7iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA48C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167168468738.27225.14544395813662269213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2908d03204c3b6a31fe44eae68ce67e00a0284dc0aadbad7310f8437e4b4c1aa
Date: Thu, 22 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671684687
