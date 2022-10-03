Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3D67B
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F5FC433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664760053;
	bh=1jLVmfAu5wkEYQKqhCbBgFZh7SjSijy21JlY9+Hd5VY=;
	h=To:Subject:From:Date:From;
	b=WbzCInsVgk6Q6zyRsNLkdTlYx6VIfLntyqVUMnC6C5I3a8Hiys6atwMkD4MSAsN0R
	 eOpZU1cyqdH1Ybcps+g37t8nGiYqrvVJK62SPJcNIHHFTUuyiO2qjSMtY5u1XCOMg8
	 6XgHApT6xbJs1xT5DYNGTU0RsWrCDOncHQ7CN3h/VaXRirjJAx0oAZzj1NS75wT32U
	 tgbisfAdjAxBjqDVa1TImeIZCjKNXxO2MbDbTS3GtVT+ptusyssgVyQ13jze4n/U1I
	 zq4w8Fel/cXas+Ll5PlF6mwXSQOx888V6EDDmUQHowPUbu9aakvXX3xwVsa9MXs5py
	 4aZJqaMio9tEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558C1C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166476005331.13994.6560393077651123728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf3b4d0ac82f0000df20e05abaff0b5ffe41f4143b01ba8377d276c3bed1032
Date: Mon, 03 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664760053
