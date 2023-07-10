Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5720D10957
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 12:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48DAC433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 12:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688992028;
	bh=jmPmSm4WDEctwmBv9e9UrtTsuTX+ATqxpmQUKw8+gyc=;
	h=To:Subject:From:Date:From;
	b=lep7XKgfDBImvGsICiIt1KqowgMhXao05OTbJ0jk+z/FpT2vZ/XKkVpAtQ7HtAIv0
	 Hq8l6gZeILg/+7riuD04ojZxRgqbIIUThsse4OQ04A5hf7q3Ezjw4aOQSpPSlmLCIX
	 /ZgIP7hbEJTu4PReAZyxH+MN1ZgxQCBcmDTLWhSOoFfYTzjl38nOsdnaHUGGlhqiQM
	 c1Fs+4Wr7vif2sDZDqb3xfDcxpoDvXd3/ealwKEXGQKCCmGEgYC1T/bnGXaoUJS0Ie
	 +A0kIYGFH+PUsbGGY+ALQ6Nd0P3yYAMpdM7BYOnK4GqKx0fVnVzvJGYkzER6bMPjmc
	 m5n+FF8rfHBRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69D4EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 12:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168899202867.5144.8372481538781055607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4d075ded84fde3d32ff0e15103ac9f04d9550f8571957b9b1c0469b4ae1c74
Date: Mon, 10 Jul 2023 12:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688992028
