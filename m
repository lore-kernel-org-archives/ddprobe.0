Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B855A3D67
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 20:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3441C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 20:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687467188;
	bh=PeyY1NiRNPCPzlgtS+OcgWgGFE5tVqh2c0vYsrWMI1k=;
	h=To:Subject:From:Date:From;
	b=j7lPd0yY/DHBPYSMpLnTsSXdrJGlRPNUmPQY1iKYWcvmjcwmKcWxk0L/KUlLtmIOy
	 Bi0QgO58cyRtjAbM0N0GFSy+LUcgaRH+6iFfdrGPNZk3yvmk+zGF2E+twWedx+ehFD
	 cvYQ2rWhjNsLYF4Sr53UPuFqqIrNDcxeyZF1homIONdGtcpK8399sg+sZB0tsA72Eh
	 5vLweMcvMwTXmRxjbW3VxVvhtSKvsvoQav4uxe65OSlXPk+qp3SyfMwd2o7qfajJxO
	 T7dWJZToVhthcVBeMC6UPnfzEC9g5B2I2fqTlxYmWhjvi7v/5infHMstGAiaAk6YXF
	 kxiEF1FDlhJqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE693EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 20:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168746718870.7707.7826112615571470743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5762863740e1ec49096fc43fd9e20de818e35aa229f2e0556f7692dbcf2ca4dd
Date: Thu, 22 Jun 2023 20:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687467188
