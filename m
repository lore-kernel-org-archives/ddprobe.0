Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121D91370
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7AOlkO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96B90C433C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700184496;
	bh=LIfhSWzcX/iEvwaJM7ztJV+RxZJr4rzWB1bERCOlPSU=;
	h=To:Subject:From:Date:From;
	b=Q7AOlkO1U2CkgjIw4HpDPk+QbjdW6pgXgnrpd0FeBuxF9nI8xwCKpM7vlHeY1PxrK
	 rz9DHqD6CmLkvQyPTIxqaicE6OGlJfkmONs5HKJCNdQoHVDAKO+ggo73q9f8pTdo4T
	 yEUCE6P6BoHLbVqaw+Ezu/yiaGPgGTfZOAS5i7NgYv8Aw9NQCpAahwiUryPmY8g3pi
	 I5W/nWADrYzvrTDhgL3zGT1Jkjwl3NkSZfc2DWFLD1mmISICxG2TnWy424fqpgZv7C
	 rOQRIsfd6K7ImuAbR1/cr3SUfVkotMusGeohVxrj4JVR+H6KH3967+qvNPd5v9slKq
	 ZuAXV1m7UfgMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77156C197A0
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170018449647.26129.11438437363945758358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d0f1ad3bd5b49cdca88dea0792730c6213b94d97a39b96b6bc90257c0779cd
Date: Fri, 17 Nov 2023 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700184496
