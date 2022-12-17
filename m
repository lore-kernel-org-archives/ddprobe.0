Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0553373
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 887F3C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671237087;
	bh=G389YWGwaY18ysWIlni9u67EMWNBtKFrH1aM8BL+YXs=;
	h=To:Subject:From:Date:From;
	b=CAmm2IRMvP1MAI5+9nXkzxZoABx4eoJMttSpH3UoCV0xqdWFLczorXxF9gJ+43PRl
	 pDwR6NtrIzk90nqcmQdJBIIexsFm6a28GAJuBXjvagXPTY6Mx0cZBlWRpzKdyqZvG1
	 c6n3yMh4vaOkV8/OYXPFkr8cY2Gb01MGUJVcoPYx4rEHGlSgZOCfpKlYr8swla+8g4
	 Oin7OSQc84bU8eqVKbMdyR2JYJ0OxtulS5jAtVhP89KntuunjBWTCC8Kh3tC6pJc6i
	 BahI1uxNfP2J0AB1y26561xj+sBzk3qdH1HmM7ElokWEnTMwnAjWWqVV24RZYuBQaD
	 mrCnH7fHlL9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C15CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167123708742.7870.15474473989883304763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6059c0c2fae10d0751b6a2d7db7f9b2401500b566f63e8f1cf47de328b1952
Date: Sat, 17 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671237087
