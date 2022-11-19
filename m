Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E188FEBFD
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9210AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668891654;
	bh=iq10i2a+N8fv2hSXub9maZJ+tt3LiOPJe0sCBwUQMe4=;
	h=To:Subject:From:Date:From;
	b=CEqcCQYLJSWsHXoSCTXuwyLN+bdX2xgu/TtC1ntn9zWUUcJ6pMpUyLYQxBF8ByDFf
	 NEuRHKNBECjSbWqMpfNYtaOYl18CY9Qkd1phw/SuY4WsQ2THMnu8Ks7PF33n1fCPTc
	 ka8Gl4ZmZflq5nUgdKc2Hm9EhtE6SqSTgG9NM1gzNhx9sm2di6MBqH35UA841VxOy9
	 VZbQmIRhe4ZT0/GAFWA3QH/LsSuKDHaivGJIwDuSYKpP15DgEK6cmC9KCzaWBDT/PU
	 RjaDJeKgYb5NYnHYSGJu+iydKHFIBuS1DLJVQqX9NSYKGXXI6P8IIu7fLTWIAwxKsm
	 j+V4eHRkmgC1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 739C8C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166889165443.25802.17259875368921611802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0869f0451a037a094cf193230351bbee9b549bab18c4645afce902bba1319c20
Date: Sat, 19 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668891654
