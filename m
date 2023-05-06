Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406C21C13
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 11:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA64C433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 11:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683372485;
	bh=Bya3S2MEB2R7pcJ6MrMFa6G/pJ6vOQOfBwKOR97qCX0=;
	h=To:Subject:From:Date:From;
	b=APzhPuhK4QrL7CCa6xy8VtRe4Sro/emZkiugUcuU4drsuZYwA+3UomEQ+yatVxHCE
	 xBtyQhkE9HpRGurTOG+Y9zWvmSbfklmgRcygkEaAUfNQRGh4La+MfD9OWJsrHq2RMG
	 1nR/r0wDQXSpl1vWpasY5lbbzU7jzkyjFld+MKRXoSUkG9QeSjU7h+cWIpVqUXRiU6
	 reqRY3iHFYMFDTw4m0cagZuBMQprRiMmALGPeIp9cS9AsMLeDqAOODPKFBJ1Hn4F/L
	 jjm9dxpx7ODRJLmLaBNHTyPv11d9P2+wfqd28Il2DdnVdy/lRCDz0zu86YT93ryFv2
	 m7viFurs3DbUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C325FC77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 11:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168337248579.2123.15181797196054819177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2d9756af28611a17c5b1fed5850f85814780eaf5fbff6853fdde6c72c7f07c
Date: Sat, 06 May 2023 11:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683372485
