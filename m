Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08D72F3C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B342C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667605254;
	bh=isZRuAWAhXDW1m+zHcaFodndKHvKxWhhU7CYNaVmM84=;
	h=To:Subject:From:Date:From;
	b=AwdzdsJfvKZJXtANAwK0sfKqbdHY0KcNMJ9hVEsX1KphroRnNfLuBXJ0uT6tXwRdq
	 zMW7oUooKo8i8ZaslFZevvQvrw53KKH4KfOSdoVrRaVQfg39yuAOPVrPjaemwFsdqT
	 8x1MA7N7alui2HkCwJvEMGuDH6WPp4jZQxdE3zGNs3zV6gNImaMakruPu88zXGxVu3
	 sHc0s9pduegbz6zIang10d9tKPmOd3I6549xgBpQTPSDe5qY9GD6zB0xSBxCGpsjoz
	 mI5xN+V2gimKVb/2I8Yxg4BzxRUEs9mcUW19rBg4TGoRg9DeaXFdygPNB+39Gs70lT
	 SlDOaZER/MEAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FB4C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166760525433.21931.7398335174172215506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc1538177eefaaf925f7a40ed81216b64412b0ca9b04c6d5f105e88e35c4677
Date: Fri, 04 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667605254
