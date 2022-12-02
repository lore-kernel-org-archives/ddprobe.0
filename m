Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A8A7C
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 692EEC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669951854;
	bh=1Oyx3ziOIUFlVw8sOuhFEpaHpDaE0VR0qIDLbXeIjRU=;
	h=To:Subject:From:Date:From;
	b=LKgC7eGL+b1Y4DILVbDzXacJbhI4MB3lCZOtcSyzhy0uG3gVR0RHzyogPiQxLEJ2x
	 K4fqqzi4Zivlzct+Wp6Is0Gd3GTes6XAbTp7eGTHyFdLY6CxzvO7S2dSP9sg0tPjLN
	 wDpN8DXOUm8Avnewlf0D3E2ZWy2JKx2HjOtFIHDm8pCxCO18okeI7CpmjtDS/GFgND
	 872yhF1XROXmspKXMdbtR2JZnmRZ4pUCWFfCsVN/qpTRhEPsJSVcrKIuzNBi2A7mvC
	 uP1WFMD4jYVz7dB+0lfvJKHOOA3UPKpx7irGfoih+1OGSuzPNEhyaJUKpqrz1rVKyw
	 XHiT6tphPHfng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F945C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166995185431.26648.9976871304510591871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c53d2c79d7de4211e159888c9c79c2e16d37baa301ff712fd6f0a4becc9cbd9f
Date: Fri, 02 Dec 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669951854
