Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B20048CF0
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcZ5R1HF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78ECFC433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702314496;
	bh=tM9y/xUfYVohoIK4byPZzakYq4ywAq5ST5qApSzu2is=;
	h=To:Subject:From:Date:From;
	b=ZcZ5R1HFeeDoqh9prvViRGV6bZyh8BRqRjQcOdHu3IP0V7+d6AOQE2WATl+EWiqo0
	 yFTiNpEbQCsWXxAs0sR1x5QXb1AWvxk0s1cCFxwuKs3rWie7B6ctrarAWMLMAxyUeR
	 KSK0XCelOFFbzDCPB43A6e7kT1z7Z70U5HFDvUvgv9VrEAUt1z/wC4sVFDSVJm5mR6
	 wDeGBG4HA8TS2x7s7nufmWmdf1UJBjCAzmvmslm0aundvrpw/l77WNOJuAMShloXhP
	 oruPgnTrYrn0PEP1eh+Y4ev4x3yc1Sk/FLzP7cFP4yUieTVF5JG9ABuJXbBkGNr1lI
	 fdMyfQRZl4rrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E121C10DC3
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170231449637.30256.12210227221726919624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9d8c308a5cd2d73991b4b324f3defb3ab240be97b5b79d52af4a7b5a2078de
Date: Mon, 11 Dec 2023 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702314496
