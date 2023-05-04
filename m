Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546403C0A
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 17:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 026E6C433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 17:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683221646;
	bh=lVQJqMOVX0kBZCue0qFCuVWpsmKCjgpT6d92ySL/7H0=;
	h=To:Subject:From:Date:From;
	b=jHHb7bWCr7mGo2y8UvvfhrB9hnj7drNA8mZlNFHUQFa0l57WPpWAWa1RiuSLeb/Wh
	 3k79lsS7IPnwRGLkUbtRCNzUFEsvYstct+NNYVJxVJzOP+zcCjRTyhA4G1nhyaMute
	 3cBKY62weropKSREJEQYxfoTBLIkLaWDwwcQzjiCUiVMNGiry1UuFABOLraoDpAp9T
	 HWBHAmbaq8PROdR1KfVHP2Hjmou/w9BVB8NCah+/5ot1updT9H/2pewu9wm0hbNpud
	 7NygHduJK2XK1rtz/vCGwI0aenfjbgrd/E5XWPsGCz933tUh4I5STPVmAWNjFWCgKi
	 oBSgFFwpNwXXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4CECC7EE21
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 17:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168322164584.10109.3215165950755270186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8051dbbfa93ed3e769f24f2223c49cc350c57f83a182b8563fb31154baa0685
Date: Thu, 04 May 2023 17:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683221645
