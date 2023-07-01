Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93971525C
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 09:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8002C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 09:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688203448;
	bh=ttF2gWBYiutRvygAC92QWBn4w1LC15PgT32r86dfbBc=;
	h=To:Subject:From:Date:From;
	b=hSAc5jc5UuAXKvoIZkzxNCVIf1F2Tyo/yBmcikzXBWU2bJwLzi49SM04PXCVnPkS8
	 zAP0BSqZSC+8RUA1iQDHsbOQYZiOygSLmzrEwAunPjYmjO3OmyLepArugnImQ6L1ol
	 4GyFJug65CnCpIUCrbgjEc++GORbebF5JdX8uyUyb6qV6fosHQMy1ZUPC4NKV3+F6l
	 gJ1N4hOAm7J0un+bjjHJ+8oSR0BhYXzIm1qykuPmSVVjmwS2D3+kkA2WGSHYoTcISt
	 hLeqaZmHa2llz7zyi8DxuXwYUJcGrDpwi1+Jk4aeX/VtonZe61hzG4ZCxHquc9gKIa
	 zQSA4KgzKS+KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38E5EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 09:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168820344871.10828.9335981892491485384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef3a50ade0feb3bd5b614d526d64cf41fa610c1c4b34553b0a42e0f5604e483
Date: Sat, 01 Jul 2023 09:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688203448
