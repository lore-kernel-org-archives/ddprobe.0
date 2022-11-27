Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AACEF6ABD
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 643C1C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669582254;
	bh=V63e+iDBddZ6G26RrVWsds0+07AeaqkF/r+bPmxfDDw=;
	h=To:Subject:From:Date:From;
	b=hfQGzzAw5VP+z57iFHTGpH5/6NqGED4e/1FLdRzmhqzS2X0f6FJCUwzbOeiw9qN8t
	 KkQPJ1AbGEvjTFtuaiMpq6tUwqGCndbbQxFHOYhCT2Qabi7dbmcZ1X85ifrK4VY0B2
	 iEjqVfOQKXU8wYmIymlsQ6QYZKknX4fhlHINhHF4YsVzLC8JxahAt9VkWmRBVmqQRH
	 aqcvHW95erJcZUvSnr8F+AiHCUVT1AXXt1dO7P2DB1SiOw0h2WzJ/kozDj5yDZKL7E
	 B/NJuigHf9GooTcU9HGKxKM0PL1KWPIhMAIEKyo7Cy/xJuE7GajhlHs8YwRy5dlc98
	 LQyduPA8njmlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB43C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166958225431.2422.6765606944324948844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9288164177c0843430468b6b7a16f30d2f3404c5e6ee03b6b8f30e80a51fb14
Date: Sun, 27 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669582254
