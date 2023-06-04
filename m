Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC6F2CA9
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 21:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5610C433EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 21:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685914745;
	bh=vZrOWA7P/iAeiFTCgtbmKR8OP8PWEfBoe06lKK7NO54=;
	h=To:Subject:From:Date:From;
	b=D/bCwD5bufAUfhM43Z8bq4G46PccJiTKVW1pt6IeXbUq7OEJ4HMnz4poW5OKZkKxj
	 f23DlJ9kXvC1KAqNm3T5w6Nn//NeLDIGR/ogWoWzG2fH3lITGYKvFnXI4rNX8MsyED
	 ySZdjWzZJgolbAOxG9tjHY3jN0HWljDNtvgD6Cukjz1UxuewD0fzQ59mRJJp36Nv52
	 6kbdp2h2yNaowctzmn2VtALtpKT0baiSMY668I2T3N3AUBgFpBDRdjLvIP9xkqQ3Q4
	 K6lJhVjgpjMHziawWxDbErih/IC4+vs5rhAgbOG/BM6zHP+pjTYv1InLjVTki8VOKk
	 L1/jrJeRFKQKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A34C77B73
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 21:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168591474572.6531.18371319073372929159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f4536fb8d03aeec3afd9266a63bdd458f9a3bfd2f1a2faad0e4cf0d95652ac
Date: Sun, 04 Jun 2023 21:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685914745
