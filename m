Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6EDA7B
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EDDAC433D7
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667340054;
	bh=BtvUJcpb9+lgJXxD3FfZk58WodFNvZXM9zgVAEKriHw=;
	h=To:Subject:From:Date:From;
	b=cws+zdtsILf1AnbEWTSbx0dlMfGpolNPG2uFU5IHHkrgmhtFyf7lFgOhEJu/IIRdg
	 QJb16tTVw8lZ7WzRuLnRJA0ZFzm8FyBnyHd1i48Ex0NMLahPFj8X8feXtjBn8+wX4R
	 GRf2Huuec7kFD7PcXLGkqmJ6NbxHl1vY425xq/2s0PIpgoJgBZsTtMkmT53EBecdAp
	 1oOuQ49wy88ufXvBy+muEos1NJhdlFghu6tr73qMTvS16yblK9nZR2nOAM86nhbHeG
	 VgGL3F3BsSY2Hxj9fPJVFLGhBNlC8RgZmetqL3Ai0jywMG+pjpeVuGKpAIumArtdEa
	 yuyw0Qv1ygvNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52556C4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166734005433.8501.4824386393052655818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778ca2902e8d5507aae469c6dab45047eea229df7d95d2e6665c0657b5259780
Date: Tue, 01 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667340054
