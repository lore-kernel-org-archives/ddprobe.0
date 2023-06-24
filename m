Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A59A3C3C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B4EC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687633388;
	bh=dr9qCXlM76KSf+ovOl6/f6YYDnEJAew1OFIQ40PSiuo=;
	h=To:Subject:From:Date:From;
	b=i/jzIsOj4Ip3D4elmcd6bUDF2KAx65SYgPBt05oCQ6ekJM3zGrEL4e6pWCWcm4JH7
	 TZpiXm1ifcCJ3VpoWa5D/89xcfnnh7UH8CC01KR1ba8e/n3XEyyxks56VZ5UJh71k7
	 d53Dk0mgt1BLORtw2tXRenF1N/GncOXFrJLOayCY9WHnaiZS9uBpqoYyNV3Eko0MxB
	 4L3v5n/7+4TitrfseF/dbb1o94+2e/mAoK/g1TYiB2kUDXEnjzsULbfjoxlOwRrODD
	 P2D8ovbZ+9DLtmETrmELjSiMtBevYprKNhHh1Te8aNWada4yk6rLPPHDZo+zEm/o6+
	 A4Jfzw9LquxOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B932BEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168763338869.14528.4053978026330932264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb37038ba34fdfb6fd83500096a81bb1adb0e18d763fa3c82d0f755296a559ca
Date: Sat, 24 Jun 2023 19:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687633388
