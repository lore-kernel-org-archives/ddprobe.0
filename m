Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D8923A3
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 713A5C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666957254;
	bh=jIZp1g6jyuPgZ/ZxIw/1RaVs/6ni5VNfLLXE3bztGhQ=;
	h=To:Subject:From:Date:From;
	b=bikcmNbBmFa5ME3nHTh+4LPrOpikqHHSBBPd3kcS7JBSr5y2yA94cYXi5OlSznbFD
	 XmdyhvNrxYLopN2kmLhsbZZfaTlFd99HEHZnpM37oThIx3nnDBLTTM9W/nnknWmyZV
	 qBzcamhwxGX3G3S4EHCorW2f0Db/Qrt2qxP0SQB5XfFeKZkkkiUqr76XybhLy1xher
	 zKYDk73V3PaTRHn0ug3f/zvvoe4+ynCcsE+my01eXVkPeo0j76AkUD1mMZLQsSPcTP
	 uTDNE0tZzEmGftfoXCeYgwJxEFbChrMryO8iuavmLapA0ZoYcfM7QuduuM5kkk8YKT
	 8G8JF6ReuZp6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5642CECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166695725434.5627.13329517752222609143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee38b256610fdbf98933120a7e8c4b021264aaaa39cc9640257793b3638106b
Date: Fri, 28 Oct 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666957254
