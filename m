Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A501878
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 886E6C433F0
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671556287;
	bh=F7bF3EEPt24AwPZVYNS4276EwYSKexbAg7lZJpT6Hkk=;
	h=To:Subject:From:Date:From;
	b=LRh6To5/L41B/kJ0V5aAq7EOtrqzsGxM0dCZHUkiHdpM8MLneRhKyQwqLPsp4Vy9x
	 QlqfzBgHJhGRCeZy+xiASctts80vhpk4XaJ/U8B+eOWac71uxi3va7KIDWjCQNgkGG
	 aiMSbbc8/J3L+HGFu1B3TWTgEZYP5ostZ+u48wf5ktFqpFqxKklowVLQja1DtyaKt+
	 /Er/7MbkSpFFICHd7jI3lZVxfopTZvFM+Yn7nN/RGkMa7yyR2Nhbk4V/q9IvcKM8vR
	 DjWEgK1RUmAuSMHQuAww8NkuvausR1u+yqCeXK/rcnYMrwBAlx4TxJV18s4PZ+4XFe
	 GO6s13TlYf08A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E7DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167155628740.13898.2355813273266757928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea2873ca6f029a2db12be2403aa8df3e9107ed4fd0bb901abecb20ead7140f6
Date: Tue, 20 Dec 2022 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671556287
