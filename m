Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C5C36D
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89B17C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671949287;
	bh=j5rJu/GxmDQYy2E8f4zKCG6zJBLpJRijIihzhV93Zs4=;
	h=To:Subject:From:Date:From;
	b=irtLKDai292EnMUhbmhil3jbbTq0obQVrz3plVtzodY9HqT6VtbtUGPZEteB7w20H
	 OxHmgFagQAezzi7IzQPdc81XzoRokW/jNcQh624EEAbTHE4cQqdcAw2W5dLYiqTh0l
	 E2sREXUrvITXGgOHC2T8HAOcUmkc4833pOUE3pHyWxwgNErmTbH0e/T661+4oyB1AP
	 oJB9g24MIsSOuj3Iz4AMC0zRks401j+51m6tPv1agsOzUorl1bYG0eyuhbpXiFuhKd
	 e8w+8xSlQvAGuyBoNsjcMC39JecxtlrL/l7HVBna2GH5DWzRWs4U6/byjbdAOOqccc
	 uvYeiP2QJgt/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE36C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167194928739.18313.13397403332096621007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9260d0658e7a3bbe00304c73258b2bd3a72df658c8484fe459cf237c4e0c5b
Date: Sun, 25 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671949287
