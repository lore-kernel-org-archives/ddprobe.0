Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C2C8F7E
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDC2C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664059253;
	bh=4KrKEYC1MlobJs27kZiKq7SA5S3U2Ka8cey4i/GAI20=;
	h=To:Subject:From:Date:From;
	b=bJK16ThnZkxJzxeSXykkEDv+6FxDSoLoqKK+xsf7HilGKxqlQ/uqBAHopiVca4MbK
	 JQkumib4flwoLeG9bWQy1X0mQQSgz7sz7ZlQ6KyEcUsjCTnk0GnzkfEgSyoHL40mDt
	 jMOjrIw/vrecfHiGefBnjG6xpU6Zj/3V8GTMN60EaiIKZElUpGYhrxGLN9m7AZqIvI
	 Q6VINn4lC+rqfflinzxkaLPCtCpX8Wa8nvPCF8JhM1g7l5/bOFfxsE9h90dOCulmHJ
	 yG0zdQv2fMMdEItFoS6NxdjzvV+kfABtbHdoyhDk4NCQzGL3Wwc+nwq+2D9yqhYcVf
	 Ab+oDa3OzqiKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F17C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166405925331.25856.5817724458114211247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b49769723f85bbd3555f6c7a2ecc8c9a2ef5f21ca279e6edd8bec7f1685ac6b
Date: Sat, 24 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664059253
