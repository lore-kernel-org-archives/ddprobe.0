Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56C210F2
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A90C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668391854;
	bh=1ci6Q5nRqn3X9a1kIlviRVeRR03owgJ7XGHETST5b7I=;
	h=To:Subject:From:Date:From;
	b=AEGpNqRkonV87EVQ53/Lw/TQMt0dftMnUY5TfR9ChamjU6rTWY4SMaI+ypLcX9rEN
	 rnu9sz7kdv1GoLcdhLCiRy/0AzwMsf+bMds6OrkhSvXOhV51JyophG5ILoCzqadYJi
	 NEQsidourQ1bElrNfJq4bcA8/o41KgMtgbn7UCeCAPKvYZyvJPe2cDGEAGehpAGrHs
	 sKboa+9WiZ2R2ZIB4E+rHOfk5YNeDWFU+DJQX78bPhs/4ghDYbejZkAgwVmCcNMKOZ
	 0syqFurX6HevKUAx6Q6nky0mcLk219XOjYra7R3bqo0PrEPcpFiGj2SklbdubEoDQ/
	 Ay8bwulvBhcrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565F4C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166839185431.12045.5607389350620293629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d49693b8b9cc72c7707b60be0703a3311d7d9c2d5b262a30e75bae5541d7965
Date: Mon, 14 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668391854
