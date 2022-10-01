Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080FF7B
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EDD2C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664646053;
	bh=QEqq9IVsXY/v8+pWdF5f6gKImG5ao8kr/CxetepeoIc=;
	h=To:Subject:From:Date:From;
	b=u5/xoLgpznpRU9o1VY9AEQ/0F5aN1SoObnQ8ou7I/2RtSddWxbS1qFj059s66e8Ro
	 q/kP7EIEWI2ph43z/2aPL71qNe/g6MWRRuaeGk1ft7s8Vw/4IWCtgaRpZN6uQLL7Ii
	 rf0/6iptTYPVG9k6r/RW3hOV75UIEClgffg6oMLolkEoh8wuvrPcIm44PbhxPp5HY0
	 WmbVFERCPFdzOq9Z9Ru0nSdciuD4QamZVw/ROnq/iaybiTOmJ1I9OK1yKCsaB/wV6B
	 ZP8OLssVQdZUqOc1kMwgo5nwu3GEIGs4uo1Tj2DhDLZrOsedM6YC3Tl9B7PWPEL9Cq
	 fuHtHJ4/zrAKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FA11C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166464605343.17232.3508124643021588559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4136bda033d4528172c838af71744b8ce299f6d7601e9d61255c95d1d50d990
Date: Sat, 01 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664646053
