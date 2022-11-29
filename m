Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD182364
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8199BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669689054;
	bh=U7OdPaC+s25C/lCZLUoO2oI9Ih+lBBHDn9ba+PPlVfc=;
	h=To:Subject:From:Date:From;
	b=hoVDEt7rLGBT68/E5F16sP0nEmT4iTWJaovOb+Y1wnRNBx+4y5PUD9+JZeNx2WWkV
	 yEAy4G08F4lELU8n9R3iRKHNH7L/g1MWTr16VLMeNbWRaeCt+YE6HRgNrBhbDn2Unt
	 OeIEqIn6URtmjSRXvDEnjTFeg/WDnudCh8nqhNaeu33gZ49vuM9XiFv2uxkUvbX9kp
	 M/wh086sMjKBAaCmENCwLXN/19HpAK0/Cn7bOLHsMn4TmnkaNFm3STZjc8q/sRPFaI
	 zgqNdWwSZNmylGUScIyQSdZClFES5gzfpNk8KVCzdzuL0P2tLkJ628oHUUVI3QrrRM
	 AgpuS//2xSRBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66724C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166968905440.2299.10991217913694739888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f682df6a11f59766e656b5f606bea273f4e363450d937a8819e2e9780fffef37
Date: Tue, 29 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669689054
