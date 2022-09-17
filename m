Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99242F21
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71412C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663423253;
	bh=TQGRu7H4mWt/Gwr84F8Svru4R6zo7L1YVV/T6kf/iKY=;
	h=To:Subject:From:Date:From;
	b=FUMits23KMDApRA1m0ZNnkb4Zjj44LkT4qJiZud10ej0tewWW3wqtvfFVY5b3QiLx
	 r+cbBP6ytlNzgqLAMAGgiBdt6uRoHBEbdvxrrTFiMahdRe/x6ink04IDUBR4qUDVwX
	 WasVWd1AWMRs4PdgLNLoDCtLOfVkt8WrSl66LoXHuy6rhUznDfqhAxkT2fWTjKv7Vi
	 SuDRLegsXPG+PXNRD9pl4+iT5aNpvvH4rqnfvCFdqVs8YWR8FpcRu9VgrX8bI8kxDr
	 uuH3xgljHHqVLoqCGfoS+UNsdJZ8eggXsgKLJdMBuQfMQBRTjlkKkTLTn1upuZ4Z40
	 4Cu1sJWSqJtkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57424ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166342325332.23524.3540337681997459263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8d88538bc8698118f823063239660bb7b7ed62d4ebb2b0c402626d8a00cee3
Date: Sat, 17 Sep 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663423253
