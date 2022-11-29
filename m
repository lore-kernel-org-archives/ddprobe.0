Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8064808
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CAE5C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669747854;
	bh=PHhHV3tyYTxP4PXkca7yzrrX619SOIJivhTUdkPbwBA=;
	h=To:Subject:From:Date:From;
	b=E5g3iERVk8YCvyBxJGoCUFVO4hwCpIy5yTc73uLAXpbjMoXJ7xnx16BlPpF0GneVq
	 RKU3PmoiM7VM8MWQURnRX8HfEClUBL4ro0tfJyf1iz/GKkbPn/sAP6p6MUA0IP5F0N
	 60a6mGiE42xy3TgOtkvumNnABhRt7jy0bYvZ2s4/9J6NLgqg5G93ugJDdt8Sa91AjK
	 Fm8CiAELIdJD6p7YvEDBrnkifUV6UdI86cPUxmvMbhh2sNtNrelEyKqKEzx6eBV5IE
	 FnFapOIbPvC5uze41c+/vgGEc9e22ypO7zIJuTKjGWXfT8EK4vWa5Dv1kIsTp+OFCm
	 wKNntTf6m5Q7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F27FC433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166974785431.4251.12661610286196886991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e7be8683a02863181ec0b254dbb8e3923425b73fc7b81dbee48a2b28e9e6f3
Date: Tue, 29 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669747854
