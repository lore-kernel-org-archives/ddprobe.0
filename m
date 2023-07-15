Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B9B15CD
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 14:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD62C433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 14:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689430868;
	bh=Hak+RHoJmMUR5xleB3fc5Rga4VUKxs7Q7kRZMc7WwVw=;
	h=To:Subject:From:Date:From;
	b=K2yntaqq9yq0sLvZozpMOwrO6fhMfFewG8MO9twdE/R+/KL2Rs368XibIeiDcLFC3
	 b2rdFNy1t9PtVQpD4c6o9j/6Lg8WEDg20CJRKzSA4vWSkCNggRClphfHtw07KXPk6v
	 oCQgaLF6gxlXQMhX5W7xEfgafOFb7yFd1McRfT3DIdR0JWAdDu4Vu0DY+vPndHtnJS
	 NaerbWLpEFPXtPpDNh6Z2IF3vnBgR5PCr0hT7TiYFnBM60GTvgiwHmG2Adm61Cea6W
	 FoVX6cHxg0L+GeIPX5qL8RvS16pJakNPICpZyctQEr1PncO85o7mEPAg8Xogc5lGSD
	 2JwsoYkLL2+hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B026BEB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 14:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168943086871.24851.16132654364781491956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70e64f6fecb581f354eaf25e198fffa0f47cec80620412d0757e41e7001ed8d
Date: Sat, 15 Jul 2023 14:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689430868
