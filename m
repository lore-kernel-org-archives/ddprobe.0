Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091CB79D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRc4dCA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 822E0C433C8
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698115096;
	bh=500xchopcaZeXkiy7NuLmf0ofmlV8Xzv/kea9mopB+4=;
	h=To:Subject:From:Date:From;
	b=YRc4dCA+TxL942nksis5+17wSkA4KrdZ/SEzRS5Xjkv9L1ujzbl+8h7495eKAjHP8
	 qKN2nEGLN12chAYLaMWG2ereHo8exbLJTJ3UT7Nd5hxk1u1j1inPD5H8LD1Sjw2z1y
	 sfarPHiwxrJvnXbcMVlGHAMeTFhsG/3nrB1wb4zbOBWnUMgwinDjk+sOm3nlsIvyjn
	 evTpDVKfXs0nMZ6Ffw9jOf1FtDvNXL8DBD94V7/VuHEUnyo+8+hReO2NVITWK7r2QK
	 n0c+enMUm4QeCx/7KcAM8s4qyTjBAERxpUncea+WZL6zQiJEl6t9mtY7WtJkTfuq6I
	 DSYKACMgY0dCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F6CC00A8F
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169811509640.10980.9517880740606179637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88413fa0ff372de920927e55d24f005d01a2f3ef930ca22b7592593d65d5b8d
Date: Tue, 24 Oct 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698115096
