Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60D77B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C12FC433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666740653;
	bh=qzef76vinSuhIWhJFjY0h6Vt812Vof+6+yJc1bEzuB0=;
	h=To:Subject:From:Date:From;
	b=IA3BxPVSCGLKIER9htMOivMEUQzacyiLrosa/mRoZDhe+4fRwtoIEslArGkbmJPdF
	 peX0YsI0wxWdZGYwSLUWmYdeh2u3re5PKwHck1OPNHHxX/SPLiL2Af+xcjhJSccIdu
	 ej240INnCDbuzBUq1hpTtT8Jb1MOuMDt9zKGqiBbmdhVkOlkU2G3310hfBgrsSV44u
	 vNBdgF8orNPYe6NvJRMNN9ByRKpjdAzXHpgrgb0cRMALnKSwgev762IOpp58unlb2t
	 iJWM4oqeg8bH5hW8QvkcvXAidvvKINfPBZ0WJqkv2P1g8krt3meu+9Wzji8i2QvR2C
	 9xzTTMxxqPIsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540B7ECDFA1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166674065333.12821.15029142250605792843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe21c43ac67d8e9f6083e0fd1792d8110c29267c667f812e7d3db8aac5e9ca3
Date: Tue, 25 Oct 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666740653
