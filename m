Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1B91FA1
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 07:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE36EC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 07:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688801228;
	bh=kCPGkYO+MHoZYCabPT4nbiDHMNr2q0DYUFOpxHqx1oo=;
	h=To:Subject:From:Date:From;
	b=RxlqQDQnGi0lqyuv388b7taA4EIonSn6rG7ZvAOFxg80tNYUrho1dhjGBBynfBo+1
	 E+FV0LN/N5tY4yq+mxUFr0nULo2S+UqeatPRXcC6fyY5FT7vVgEI/IBOs+tncaQOIj
	 lg/mGH4418h5lu/mhIzEnIpazBiNvQieKlJ8UdwNR17qnIeK6NqhWVZPRGSqI1Rhwh
	 KeWDEzK7ym8oP7S4/MsjX+NMQptLnzC72i+8FdWxVWpjGS+f8h3U5SLSjFHHaKMw2z
	 WiN75fEMo9i5cH2+MKTcGtUmppsr9EjL810uT6F0REMNP4rgN8UtKpMk+XWIDjUo06
	 zIIPK8HNZ5J0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EC8EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 07:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168880122874.11780.10729771890465497633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d975e9e89fb14bbe7b2fbeb4e4d03d57c724e25eecb9b874e27de5c91ce3c3
Date: Sat, 08 Jul 2023 07:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688801228
