Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B595C87
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 664BFC433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666223453;
	bh=1poT1y8MA6w8Kt/OuRZstJL0hN0BU8/RYPeVVdZLkEQ=;
	h=To:Subject:From:Date:From;
	b=BZ1Zq4DjRevkuaCwGyosnHTudKHxwf7dVyVpBa1ljYSuGdmqNM1aztA7aiX0DUnT1
	 54C/AmMuRZElw3QtVO4zjsbGHgsDxYfKZXbHqBMmzMoaTlgul712KBoiosPag8O/mf
	 tNtN5mE1keC086BkPfQzCUCXDGJZNDpPfyXqRgOISKlT0F7Ns/VY2Zhsgl32vFMDAb
	 vvkj7GRf/zx50UYmylFsdX1mxtU2gS7zwzgPbd+ccRIgGNMbf3te2Yae1sg1MM+JSI
	 fgS4NPxzxWRovDaq0n0HxWRc/nMU1eVfU4RfXf8a9RPS69Yf5Mcnz1+JLbBaVtzWdt
	 2ije1Xe7lmj+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5247FC4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166622345332.29008.11079364977560333540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966edf6b069fddc2f268d1bc1864b35b018e5d47f5a46e7c0b78c845c4ec112d
Date: Wed, 19 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666223453
