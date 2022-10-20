Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4D597E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC1CC433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666258253;
	bh=qtB39WXyFA9sp10QXBD4rKcgFbLf9kNMvBLkIlUNUjU=;
	h=To:Subject:From:Date:From;
	b=Ywww0Ug4+lRk4CuoFC935REuQ//uUjxvjOom6/iMqc6TLGZogMvSBsZRIKQ8KjJ5T
	 7HND4cbam/p+LfAw85oIIw+9XVO81fC04O+zman+m0XMW7lmWxxk15qAnrUjqOaMM4
	 jUqVBfftz/zVuPo4EvJRjYjSCpOA+Z3VvSWwwO1pIRKn4pn8T2jAzUNzaF+8YZvQrU
	 PGVFpYPWOUinnSs1XnrI9L7wbhBhhZIpgxfLaqCtWFESkPVsGcZ+KsoK+9M21iSwmF
	 ceLSui9xcr9TXuNGyx4c95f1WsFhVJVh97AYRKVNXxCBTgqpM0vg97iIgGSln1bYmp
	 nSF+A33y51hww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E7AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166625825333.12906.2633289545644354640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4919d712d6143a7e5bda5ed672d8659fe4b45b4925d71d5e22311a72b62f563c
Date: Thu, 20 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666258253
