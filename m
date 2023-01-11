Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AE217C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 03:11:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17D1C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673406687;
	bh=h4RyJg2Yocy6fLBZzA23apWM1KJFEO0mMn+cPdq0Z9I=;
	h=To:Subject:From:Date:From;
	b=uGiSn+IIw7LgBN6EQJEyhY9I7G8hIoRBaYGMTieVNh5kdxa0DTxAaFKwmp3sZRD31
	 +F1NmjMgZ6gtNuuQMJQq0W47pdjp8KGYlmWBswH5KHjPdFUBcEapc4jNK5lj1sRu6s
	 QznGbIU7vgSjiBEsb8z76UVz/fE84t79CJf2dZ++xUZ151BuCI2tl/wof8b276wwV+
	 SVaXIL/WMTMXxNBDDtj/2n+Y0jcodvQ8ogdY8zcDFXpjY/2pbHIIe4GxByhQfi6mAC
	 ZGvYu8Nr0Cl2yJ8tpFsU+4U189NCQUIBU8gXBTJp3D2ESvvlRdlu/m4QPR/K/hCaUj
	 AjdHPx27a+nrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB176C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167340668764.3832.2090509935328101496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baaba22dfc0cf894992f1473b07f6dd19edb5cd572a0a6a03b802a92b4783570
Date: Wed, 11 Jan 2023 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673406687
