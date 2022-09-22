Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D267C291D
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73816C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663843253;
	bh=hGz6jtWPmMj3yJUKbIKbK3YIC7sF6XQfuRbVY/O6i50=;
	h=To:Subject:From:Date:From;
	b=vJpZJvpCAZSg6QaYu598BbKfq29s08dmPTxOGzyyXdmfxjjNBaWrOJ6CUt0keafwm
	 +fuuB2JZXRR74yYRfVY98dLaWJ1m2yvc8n0DVfqyFOLmMdvihR4muC1GipGXe5YjnH
	 mc5HCXBMZowL9aMt+bkowXeVR2rTUu0sjnzeoHcTHkWXwM9Pa4Yzv4TXr+PclIj78w
	 AJaRQT+5wViTdA/kqW5qvP3e6FRh8L2V+VtwoeZiNa/edpFZuheYtYD2X6LcsrXOFz
	 vZybSlwpfk8of1AHLEwojyKqLAy3Qkq/9V5pIR7mvwzddZ18zp3TjIUUcQoMypXNxk
	 zuI34M0nM3+DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59002C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166384325335.29816.13667353647810960303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fa6ac345ae7b7c31ac406b4c21bc12ad23e47a8ce03cbbb88a4357091a102e
Date: Thu, 22 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663843253
