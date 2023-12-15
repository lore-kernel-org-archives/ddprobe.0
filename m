Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B5410782
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUcot8V/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D59C433C9
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702623496;
	bh=a6pz8Cfv9Ecz3K2bSE3mzrJgbS9h4FJ/1LkurgaoMeI=;
	h=To:Subject:From:Date:From;
	b=rUcot8V/88Gm0Gh/RJ5V33/UubOtLnngaN7rHdOMKLqi0PXJHPoEOD+8jv9uj8Vnt
	 T0Z3vuPV8rtd/HfBFVpw/dNFg1HLIlu2KBpo8qiGFJCRHCNOebehTVjJa3rb5wPfsF
	 r3bP2Nvx9onpQ/t5VxN08NyYffpjAq9Oi5ZIIIq/aW23+qobBsQfsAXPtGIDCjLl/h
	 PLGiSx2hjC1+2qvWBv/+xGlJjJLY/fnF3I9uDzlEI4DqZILV/wfWJdzMO1HlsLKFwd
	 miqhtmnNW0qI3mBhG+6QcAntWPjLEOWeQx/7dKXEUg2dTp+jTMMMeU+pnTel4aCBq8
	 ihAu75rUXNBMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6ACC4332F
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170262349636.3489.6600835882866263648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d3162124725e85adef2ce6a301fc831722a2c2a9e16bd66eeb8142123b8884
Date: Fri, 15 Dec 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702623496
