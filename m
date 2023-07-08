Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6062A53B5
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8ACFC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688828228;
	bh=0RHdedO6RIxUaJ6TnITtuyYu0ZWP7f285YGRQFpIAMk=;
	h=To:Subject:From:Date:From;
	b=P2eFUPf60jcymmT7lhM2x+iOGjqpiz1d7f+lXrjqA0pDHcuRemMTDPy9GCuYKNj1v
	 asuv1W/KtpHfwW30UnwAxFgJZ/Rf3/2tpzzouHIxbo3TGVzTm6ODnHLba0Jr02kosu
	 VohbN/Ip0HpFC9xmRZ2QeYRJDRNTV1/WhJpy8b1Sg1irpU/oejm5DHKmXm4vmO23F7
	 9vDJjP1SZDBZtyUTPsXGi+XMQwLzhTT39gvhyxX71kscF5p/txT1kUObx+6jaJAReG
	 2PEp+KpZkNDm1rQvrNVkAGExWWoGIbcNGHKX3JBcuTfd2CuvvW+qr1gktSUAsHjcY8
	 UpOc5WRbxhLjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70BEEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168882822872.26557.2358180761615526363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: accd981c8a994c5e448a77257117730938aedd5d564f97d1613918400ee0affd
Date: Sat, 08 Jul 2023 14:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688828228
