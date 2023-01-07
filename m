Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F451842
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B8D5C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673077887;
	bh=Ac5PO+VPb91fNQg8YvUz0Dyhzib7P8zn8AM/aRNym6w=;
	h=To:Subject:From:Date:From;
	b=GRUkjLYo3aBMseM28Xqp7BwfN5I3vX3gQg55mHJEdKVwilOX9pdfuoJ/aFlC2q78t
	 58TRT8zXcWnjwO3tC8DhL6maU3Rl8G96qzSPf7I96Ms3ZWMPfP6M7YMzSSLTcz+SB/
	 yB8W9rtmiBKTgr6S3o9TiGov5gxUql+u1ogKIKNIKlKHPJ2nhO5E+M8Diyxt8WCWlC
	 /86G7dTLqS0PkTUNq1KMLDPZ9iylv8qRNgX9cnkidTiBaLtFkB9tMdpoAyewjTXhZV
	 5d1XdgAvyj0zpwb5XFFvifcT/cSIMDhVxJwowIoV0HHJSKoeM2VVGGvZNgheU2wo/f
	 cwAAWE+X/RrlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F19CC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167307788741.10090.91805677390878574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb27c52a47007a790d0ba688751ff8df8fe8c10bc1fc0490d3016de4160d36a7
Date: Sat, 07 Jan 2023 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673077887
