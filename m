Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22227B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75BF1C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666053653;
	bh=gva+y7eXSFt4WsYY5tdCyEf9U7d4/3yYUzdVSFEdfYY=;
	h=To:Subject:From:Date:From;
	b=Nn0SCzXJ6JFKyfB3GuO0vsj7S15zQFJMnvVCepk1k4V5VqNL/BCSNUZVfvdSjF5DL
	 F8F021+mkCSR3tIM2MHQgKI/pVD86dDBhWYQBBT4KOWOUADPmbU2ueksp7ZI5zD+yM
	 cQYpmdnPiinIkf52v8ji0Pm3F0Gr4cXqT3HBh4SVMZ+ArjtCZYuGFPNN3Td+zONKtM
	 19juNmEYivZwq0LFePnjmrtf1nl8TASVgRYZsifrCNkXJLy2gOhbsUSFRq1F50Ceyi
	 TMkKfZGoIvCH8nR2X0Q/+5IF1KNNDNLs91uobTH1eoVy56++t/zsqHOL7lnfNHeD6b
	 axnmoGm3Vr64w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B251C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166605365336.1414.3740561348135143539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09671849f9f64606558a94cb6e33ae428a5a9149f8eb98bbe850b7c85238a0bf
Date: Tue, 18 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666053653
