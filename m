Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437277E6
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 03:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC212C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 03:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674444125;
	bh=CgGUqiYPKxAAqXSonVRsHgg12SwM5fEuWoHyN/Yz8G4=;
	h=To:Subject:From:Date:From;
	b=CMEw9cd1CmJE0DFGoHjB5JnqUZ+XjNCmUv4QnNbGnfWHLw6X4IlBz+cPEf0WWG6g/
	 JKIIYeDgcgBtd71W+AUM8cOpDR3gRkMWxQYN87829Ty5METy+2y1wHkEv3xVKoqAgy
	 lq2OUoGSA5ppWs7Bg9ALM+yq2ILYdXSWfIGAP0lDm/SD/YxUQU97C8NQM5L+xxGG/d
	 O5821onZ769wLul/sVbs9DR+qpbFGyXpEYAQwHrFTUot0ZbSMdiQi5LHex3/+rt9zZ
	 Gz7OsJ/9+FP/Vm4BZDgc59E9QAkRQRSul1BHVFCc4Ql7SE82NpeMDWt43n9KuwZRGK
	 1wRCDTDUulR0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2BEC05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 03:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167444412577.26941.18054190902895547048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13dbaa32e5095be9517bc9e9aeb3f0a3f10a7f1871420a71c7e404187fa4663b
Date: Mon, 23 Jan 2023 03:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674444125
