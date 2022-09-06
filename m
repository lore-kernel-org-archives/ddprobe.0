Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83D586E2
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C52C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662491453;
	bh=PBU2Mv6Yz8ePkGgHHoEvKQsNEBodyD+3X7zQ2qrQXNU=;
	h=To:Subject:From:Date:From;
	b=A7Nh8gw/dgOCQgCLyyKHQVG009Z1AhXm0MF1qESuL+IN/r8iaNkJ1giOQBAj2n5e8
	 MzjdR+1RHBno7o4x3h88mN7W5AmbHVFS5KqcuyQw9bFC+bf5bTpfnz9veU0Noxs6AC
	 Dp51/rNMa/NulMVyESeH0qeF/DXyv2qTqsiizjrICQHOBPdaS82QZ0vXR5Dga6brcB
	 +7puDBQsOWgL858CSy27Nr1aeRbmAQpuYeDl8T/5jnU2TF5+GHaADfaWD29Wu01+C4
	 UScZapcWPLycIfXNRUuBLeRopN76BdRLeC1vo3vbdn8E6R+HjXjsWeJtAhU8P4xLK5
	 KUQwfjdd+c97Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A90EECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166249145336.8156.12211040568269189434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e9574708f7b86f4a49b6543397d9ae95232f75689b3bde63e4c8c68cf1b9d9
Date: Tue, 06 Sep 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662491453
