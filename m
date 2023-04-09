Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4221360
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 07:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F29DC433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 07:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681023666;
	bh=RxlsPByNHBbHDQDTxIypZAKEuKEKGvw4Z/nVLIkNAj0=;
	h=To:Subject:From:Date:From;
	b=tM8ST6LMJlWVp8tnaPKH9H9CkGHiTfx6Hfryap4ouLgWPMBMHfbmvrv9nIoEt3PWO
	 ruC4WpKqu7Zmc6hE0Q7q0yDyC4YbpJCFUKG0LVlJm0KkfhtHldPwoFubOc+2dHPAqX
	 yUPv2FobsjF7WvvRsuc1UJJ2j+AhtGbztdL1nxwrS1YXx4s0Fu+lVCJyXS56vDed0n
	 NQ0oND9o/PL+VDTEPd/amG9r5Lf+6LEQgZNn054FS4eiP5pgSdDeYM4l8QoYYFAnFM
	 75m5aw5tL98BhEQwHslIAMEMc9BGN/k2XKUs1m1vqmtKpzjjvjkPMFgoDAaHhqbl7R
	 ZeYFEez8h2A0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E67F4C761A6
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 07:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168102366591.30321.9457924887218624831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5c4b18382183fc4d6f21b683d8f3b3dae47543d5921059f32f55a5fe0fd8f8
Date: Sun, 09 Apr 2023 07:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681023665
