Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D3C1C27
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 06:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB961C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 06:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675493766;
	bh=3Zpd5w764g08P93cUU9yDg2SFbybz+3I/Hmcow3OqpA=;
	h=To:Subject:From:Date:From;
	b=KvSC55cBlrqbUGPjmEmQHoMLULSK88ZPLGf1BROgjMAyqxspOzUhNFRHmijnv3rYF
	 7e3Xz5FKcEayaS/uoH3nMU7YltmaBu4pNlrutgbsWVNRJQ4sqRj4g77pmCMpYN094Q
	 I8hk3I60vpaG7oUMvcx5DG479Y/T2lo1bPEtmUfvJaJnjJswSMVKQvIishOLTTwYI5
	 tM2XpaJszPb8qt5jKefU8urwdXGVPn4FeNDNjCuEtMZHqwTchDRoutpZAgBsaqTyJn
	 JcucOSDpdLJwhQ2siKHzxdCGzbD+W1H3fTQFgwiyN8n+Unj70kZ+MX2VG4O21sWZ+0
	 vgMLSf/ChvsNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C263DC636CD
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 06:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167549376575.17392.1987782767105503849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a35ffd6c59ba8e51620c9869ec1629f50a54d6e3ef14c3f6d10d8491abe3b01
Date: Sat, 04 Feb 2023 06:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675493765
