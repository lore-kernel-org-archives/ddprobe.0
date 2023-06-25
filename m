Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EFC62596
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 16:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D54C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 16:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687709588;
	bh=C+6i+e+LgzdqaPUNgZs0+GDev44EMZkEoYWzmLd7XLg=;
	h=To:Subject:From:Date:From;
	b=eohjkrCRshIWXRnNfA5t7/CsJ0rNyfIkdyOIksSU9m0fgZgrCNflQGZYqVCF8SB7X
	 eJ8awZSaVN+RCYJO9DoWh7CQiheU3sjNVDsH1Nl+pu+vuPGU/ydfhS8Qxtm87t7Rpk
	 193auBQKDmitHuvC00OY8HIWrGrHonu77+YUx+W1lM6LdyE+cOZ6JDW2SYcYgWpmhI
	 Y268S0aoadSLg8y633sJtGyCDw3sgPhYzxrWlGtl81JiW+2GbSBlzTJ+cQg7Osjdfj
	 iSxstSXvaL5Br+8G4pXadUvybEoOJnpvvX47zGsRdKGQyFNw+dS1EpiEYmThAMsYCf
	 CFYi8LKc1idQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56A2EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 16:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168770958871.2288.6270395997945556323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0450b7e2ab5cfff09cbf1a46aaf9071e23ae37c0e22b1815edd917441cd166e3
Date: Sun, 25 Jun 2023 16:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687709588
