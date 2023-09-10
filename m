Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7367FA49
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 08:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC86DC433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 08:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694334848;
	bh=kZrdL/5EWiS3Fiz391D/0SNK31sg+jJocjUIaQCfMyQ=;
	h=To:Subject:From:Date:From;
	b=Il2mbEas3Z9ROVofcsSBV4OBWGeIBezPEBygBvqYkD2AdBzRnmsYnEZ+ljjSlPG3q
	 A/H6cfQ4bHswytSh204EJ1cVR39B1OX5jBAheeZnirXD2ojwWggC09tYGCOPiq3AKu
	 dJv0J9B4DpHc5BYVblUWCISQBn/m1qgtunVmKz7NRQXzIwYdkofb8QY2eBBJQroq8e
	 F8rM2AWkLmdutl8dzLjwlKY+jCy6FP1Ct0dblleSCUZj59OtP0+BkZUrub59sxSHTn
	 n6/xUtrUvMqT+zeiD7JMCJPAeMB81+5KasRx0pLJQDhDJJYfK5CwzJ4wT4va2K/ROD
	 S35yjnAGA71Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA437EC8748
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 08:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169433484874.19863.6044444402186028249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42cfc4218cfdf4a9790ce96e43f582829290c8a2dcf507ec4c261767fe81758
Date: Sun, 10 Sep 2023 08:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694334848
