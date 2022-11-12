Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C433FA23
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A5F9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668237054;
	bh=NaD2BglwrGRFbmYuVkoMPwimUaZxXUn9IZUc2TZkJEM=;
	h=To:Subject:From:Date:From;
	b=l61ld57PvZ8PRBKT5TPCcpV5dhsIeyfNDddXgslzlNA9YgffxIFILg/9p8yACBhfT
	 tV9sYDQIae9OnTYA6i/ZpxVR7qOvuFgB7SzMD1lAlw5tzuE7ZjdsCcIAxwJ5NctO6q
	 fTarNBda5hEBBNHqsQAdp2Zxu63P8tcLgt1ZsT1eRpy+8gMeudNiThrUmuz7V9gW/l
	 uoWRQBCJAw4WsOMUNJ0jGzof2QU4wqp3HWYLEFrftQTbFOIO/Gkl0sxPSJtypVNpSv
	 GLeVoEpG29Z/Mukv2IU92lVT1rqCeIkXMMhrFTHZ5m547mcJmTpBo8KfxPKzEyQDQq
	 9SGgqHGif8R7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E953C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166823705435.14617.14723896596287798168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9613507cd2c0ba55c685b85da57006e260e35ebfc3f2a1bfeaecb1e999dd66
Date: Sat, 12 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668237054
