Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5FC84DC64
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 15:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC353C433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 15:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690903328;
	bh=t/ZiuXhl8Bi7J2smPnJRkkco/Kj2KAWfqlgFUiH65+I=;
	h=To:Subject:From:Date:From;
	b=E4p5h5DzIHX25YofnIgyVPpU2XQRxodnXtcTf0sd8O+a2VeUoCa0SR5iSO1YsRcrB
	 X8DBY+OVfBzsLdtMfrOn3faJWuprR33EPzvX8iiwL1rUsTcnM1ENi//j5sAUgWD1CR
	 hf0l3OHIv2ZDHkhtqy0NuRQz6TnXFyd30FzIfBA0kovIfmtM1CYPxUUEjCOcoqLqSJ
	 yNUOm93aO2x64oDGS4+SDfm3b+l07BhYqyvsGDxlJDZpsCKMOyUdRl/6gNRE3es9bs
	 cO43DHZVQ6254yAi3biHFmkkPs/23l+fnJZSqz7me4SXWoADbXKAzARqjToYsrZze6
	 8MgM5shLXBG0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B52C0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 15:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169090332866.18827.8398030407956142305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561d1cd57e132453466320d2cc8810d286415b887b91ede14c8b8df8a162633c
Date: Tue, 01 Aug 2023 15:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690903328
