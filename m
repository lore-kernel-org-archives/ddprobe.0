Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB3419A
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 05:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6BDC4339B
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 05:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681016465;
	bh=j8hxgyHM8QmGjyXIoc6x9bsStnHuH/FBWxgDKxLiurU=;
	h=To:Subject:From:Date:From;
	b=iEaC9I2akzWrIIMEFQ03Bo72FjFQdJRa6NE/Sd/h+xKIwIbDN9lnPBhnu3APauKRL
	 Mq+akbHIlVQBE09tLhF0xI7ukOs88vcEi/WcwyBwZrg5Bd88B3GJkxXI0E6Liv5Qrv
	 n825inkfvq4BfVJrvW14PmSu8/2Aug4eeXAsM39ujlXcRgZCQk8J+QzQuAzepg6e2X
	 ElWl7wkddLINgNzExoyvw/lTBnxGY7x48qItxhCB2xeCaYw4XdYU1WEYlYCd/N4Xr7
	 dplxd84hUZodXKNkU+kZK7r8Ab4PWo5on9zMbzuSW4vkTgkq6cxgxbwiktyu/+Zvjq
	 lSoR2wpdTok2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35C8C761A6
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 05:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168101646576.21285.4033321753930493751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89dc143424a2c87bdd23756bea8224c761aed24fcb9dcf478810addf1f19253
Date: Sun, 09 Apr 2023 05:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681016465
