Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB88046B2
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D20C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668360654;
	bh=IM53pLjsBt0e9ie9SoLmDAKe4DaUtgQEjjfFBVL7YpA=;
	h=To:Subject:From:Date:From;
	b=VS0Wt1aczjML516/URhYvrdA8Ty+EA447CMAMh22snIklUyoL4wM/lwcqP0A7QyXd
	 JOMKdhJS+3nkklQg6y+cTZNM6dWNWxCB/PuXQo5J3d9Q09MMUKnZlcvCvTlh8SNGjt
	 /1cbPdP8u34phnnOHqCArOOljzMHQ2D2CSqLHa5WHwHqq2rUqZm+FIrnkOcqZ5dif9
	 sgG0cPGCsF64vWN39YaPIvWuO1e7UN503AL8MW9BSMs1xGwhYvcgRunsjJCnz+wdyU
	 69qrfdK8Qe5gQq9RSq9N9dBxYRGEVFjSw76vCy6WvZEIfDnVPI6oeivI0L8xiwi+vU
	 qyaHAU7Hcx7sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E955C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166836065437.21259.14843651035919136419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae33b7be45bf58256dd7a475ee755e110a1a2741b929834cbb45eef009753fd
Date: Sun, 13 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668360654
