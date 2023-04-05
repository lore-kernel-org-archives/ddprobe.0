Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF5A29A8
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 12:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B9BC433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 12:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680699425;
	bh=ul+oB10o6a+eL1uVKw/cmaR8Zsi3z7skx4bjSeP8UY4=;
	h=To:Subject:From:Date:From;
	b=ByOqzMGOUQgHqEVOnf/i7Pdm4AYEx/RkLUIB+IXTpSgDw4sW7JuWFJZg/MK5ZaUBh
	 vorz8SHG9h+RL3aS+/8CW1wkL1ln1TWIIGiGwtWP7tkQF1srX6XOkIqzSm0FCdcuLS
	 oQfYsdtenGwCe7R95aYO5Jtw2xqcQyAN7NBEmhCH2tsR40uoBCBNBeTmpQuQmuzhBC
	 sennH2hTpGKOP6UZN5N1S4ttVIz2M71Pq9Miu2XDir+rYhTBjNHUEsJgocOLYeYkqI
	 arYBePDRBl6hFvQ0kjzD2v/8yqJTcLawwpjSJhTH+yTcevAvdmR9V9cpsCINbhhx22
	 9ofAyv/JdS74Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAC7C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 12:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168069942576.18402.16756286966974031815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fabe256bca36d8865f1cd7b2bcf27bf8017848410089d0d33879a94419b7b1bf
Date: Wed, 05 Apr 2023 12:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680699425
