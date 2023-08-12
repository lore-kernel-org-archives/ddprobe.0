Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9A31CCD8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 09:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC923C433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 09:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691833388;
	bh=cqMD9p3QLkW/XYMVqyzoxB+QnaMrDWWrbsUBQrFhawU=;
	h=To:Subject:From:Date:From;
	b=Mbh7x6AgYUBdYmt7O4Dy4Y9dTtJl0w3c1P3m7kZdK2UWfvihe+JG8gG1N1Xidsml+
	 zXnRUEGIyecU/DmcI8vIRMOzF9GFAWhW/eW8bREGBZtiUncGJBR4k6NvcrPbUDVdV/
	 HKGR6Ree+c1nZQ45ra/SvyVOHAHPSdlYgM1XJtAuCONYB20BdZ7JbuLcvRGYVxt+JU
	 4JP+8yONQ5y/+k/5RxbguCwwAmXXDCwVfJqfw9ejGC/0iSQxIOANytyHmKyoOn97j0
	 IjId0diklTC5gS9dhEnzJr3xPdn27AT8Obbx3Gew+4BuoVnX/OhMgX3ak0CN77UVF7
	 lanMZmqHuiWKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA01C001B0
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 09:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169183338873.4926.6604322861811569669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0ab3046a31359d5b59d5903995a43f089add9eb4f64c70723b9c41c58f2a10
Date: Sat, 12 Aug 2023 09:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691833388
