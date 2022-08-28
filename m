Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30C517D1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 06:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70742C433D7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 06:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661666452;
	bh=uY1fQfrHpHrh2Sz3LVvhI1sFO8/W5Pj5Wc3armVzN2M=;
	h=To:Subject:From:Date:From;
	b=KxVkgcnXXV6bVvWB/Kbe77200YCA71QgorY04oFlBMj+xt5eZgnd5b9wuaR6CyMiY
	 k81mXk3VtJohJVal2wNue1oaEuZhNEymFJ9Z3iGzHWoQutDHgt+XEXNtnf/1Kn+zbR
	 OujANkOID9sQVB1dVEbLRH3hokv3Cax7ncnAY8L/9YRJLDKHq7jaBPZzLKm8kA2eYY
	 Wplk1wQ3LnXuMCh5GALmmIN8OyVKNE8w8RYgguvoZfTXy1PVka5Iax6Izz8ZqnhYUF
	 HetoR0rz5/7DZpROmcRsqBxgdvpqsGICc4TRAA0SwsAX36vAKxADmHiGTdW8CuyoTL
	 2m0XfLpmDpfUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52ED4C0502C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 06:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166166645233.31987.2356115972374736451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02af6b289c08e182f4575ac5100ff5074aa1da25221a0c46c6521782bedc29a8
Date: Sun, 28 Aug 2022 06:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661666452
