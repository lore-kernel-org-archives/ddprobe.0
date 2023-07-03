Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660CD81E
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FC7C433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688369168;
	bh=FmzkTcnZlQRpEI3AWDiayGbhmJLPCH/y3stqGJV7TWs=;
	h=To:Subject:From:Date:From;
	b=VzRA0bfqu86Ylm3Ljt4o1yytLaxcH/vW9ZCwYd8niCsztB5IB25LzAn++0HeGCDDC
	 CItI0fW8LXUYB1vMf4QSkVx74ERDPTlU1bRQDDmjifEA89rg2FOtg9vuPVcY/TAnb8
	 p8jq0dhLrnYEPJFbwTU5pGUuzIAccxXTePrYnlUETCLTYt6CF6/8GG7yEo9wTjKdZT
	 VlAux1MZvf2JlX2crirQ2CjwQ4/Es7g9mB5c1wdWLI7EjxHJLz5UUHNRSzfKR01T+p
	 onooWyjKQuAHQrY0NQwXl1K+zBeSbTZvJNP94JuG0/Yq66ay3uOhZFYm7YTJ5yvT+v
	 UQdgsCRUS+Tug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E4BEB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168836916867.12120.11459569589792015846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd066bf78aec81419918e991aabd82decb58010cd54d9a8e549f229772d18d2a
Date: Mon, 03 Jul 2023 07:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688369168
