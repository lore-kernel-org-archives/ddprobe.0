Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCB3217FF
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 763CAC433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664823653;
	bh=/YXVLamVmImjF+gdt0Vmd+AQGJIvwafzGeHF2LJ0rDI=;
	h=To:Subject:From:Date:From;
	b=ZNz07u8yA1rNLuRLYryZ47C6UtLfeqxUxe/TbO26Hu7OTeerh5+p+4GCjPgbVhgth
	 +KoSg9AoDncLn2P3rH2Lhi4O+xkpCTPihrrqtMIDAbtFgLtEXKVsaaZiL5PQaYXK9q
	 SB1oR5+zZ4Po+2CW2vQWibc7zuYu18yiF5xRSdcMNfejikeNTS7f6W9Wd7zT76rFx7
	 BFQlpylnYGdUbQXosmtq6NRxSXRVoY1n0Ver9xSJfdXBtA60fWKZZBgjICb/28orus
	 kd8j5U8RaZqdx+Ai/Cc8F3wN0/JsrXYr2JYvU5B0PzxMtPLZMQNFjaP0/gzp8r0w7P
	 jQdrNP0hNJ9hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B631C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166482365334.31338.15094591873365456482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011e494c1be7a9c301a386113b005b5484cd96e032a6df1ed2b8e97db6ab9153
Date: Mon, 03 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664823653
