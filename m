Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D1AD517
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Surz+JuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D327C433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697920696;
	bh=SP65pnmnc0vJWaRbg5I2Sia2ag7LbDmbJ12Vx4a8F2Y=;
	h=To:Subject:From:Date:From;
	b=Surz+JuPzgGnF/plAyQ0pR3X1hEM9snlxN8ls+masUraqykVEw7cn/ZmgcKgQS2lC
	 VS1CKLj8mGY0pPOzgxO47LtqC6L40A4OmKepSFsiShBzDHisG5+tWbLDMNh/gV0DYY
	 SZ1ji68bngCqntZ1TfwoHbarQVvOXlA/DrumUdgGLfUeQy7LjNey5QaJdZOw1JVY4A
	 xv1Hkea1elP7ZrXkb2Qcs7GNfGvd8TcApnYTh+aYlaD1Sp8qNVs4wEeQ5BTdVONiS3
	 ZoHW3IcugCH9RP/HrepdQ2B2om6T5GAqENj0wYZN05SAn09DrJKzoKa2d4901MpnBu
	 or1LDeSgb5sAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 628DEC0032E
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169792069639.15818.15329561268055342388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88b81e791b75323a000d81138b2941243002c02131e77c280b163c13a819336
Date: Sat, 21 Oct 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697920696
