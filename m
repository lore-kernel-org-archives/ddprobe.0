Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4CF747B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 11:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B1AC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 11:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687779788;
	bh=d+ooMZLYTXIYf6OgwkoSQ4VigFDKFJBre5hdgpEGf9E=;
	h=To:Subject:From:Date:From;
	b=a2SJfyZ/8CwY+/kOrhaWihLSQsoGPDr3PxJHiTi7zUQLf/z7Mz01Pr+8yznE/levQ
	 tFo1TsMI9seP0AAhzGdaZjVfbL0+D7euIM00FSSknVlUTxHPZzRPw4Bu40azMsY0Cv
	 u1FNDJER5rxcOKozSKAjImQm1KD8zGF3fJTepae6/KCGp+3byJM+a8W7iv/CAbkn+y
	 hcpgItnAGfQ02usRuXY81y0BXuqUunDp1MZP0wvP8yiCLWZuCVZC7qflxftseY5uDz
	 7cI1r5ErXFVdBcemI7TQUflaxaOxWG1jxhoM1qH7rx/VtCONBjOJISN6b7/PRqJynQ
	 vvH3zTMX+r/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F1CEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 11:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168777978873.20131.6316886176791155164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641bc6fe36a3808dd5f45eca7b31bebb3663ca298f224f56d7b15811e351d8a9
Date: Mon, 26 Jun 2023 11:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687779788
