Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0DC15CBB
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F76C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669155054;
	bh=hB5lm/fCC6PR1NC0Y58JAZPC8wAYOChWht4lDFf4OaU=;
	h=To:Subject:From:Date:From;
	b=WtAbWUQ9hXj+l/n2ghD7lAafGHOGqSCO2kXbs+yyVYxU+lGtLA2DdCeDcfBe6+2P9
	 5oi1ZW3u6iVPJWodpxTZywnVyeXQtjAe+HT+A/m6XaqTqv/CXRp7lcsc3+bdRSF/PR
	 z48sZMmVQzerN1yJY49GjYMA4yE7+B9lmJttv4ViAtPBFTkjFCHMrFUPsHVvbRFM6r
	 9v5MwNn4QhTi9nYpk10bPmwrdBzhF389I7ZgYcjM7QR3YF2EJ0tidi874uVelCRLWX
	 mtal4bPaxz5UyskPGT8zhlPvmBWlO/HvmLTQJByp3STep2OdcB2r7ST1kFxjzXZd3t
	 u8NnvMrmTgUNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 651AEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166915505439.18413.8514261924395000235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51eecf36525be6258ec23b2b27d168ab8151d57dee5d3f58fca74821ec1a837e
Date: Tue, 22 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669155054
