Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95A0811
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFB9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671277287;
	bh=mO8BWuijPP6xOp503PhnOQqYuVMJ7RWYUq7IzqSnHOE=;
	h=To:Subject:From:Date:From;
	b=UF/fnIJx66GeN5h8OMQgtFc4IbjHBTKRM0Ja6dB8gDS8Jz+VCD73T6HcV8RY9L7e3
	 0IePneEp3UDfkKHW+xkpLUBrvHL56LxWBoHVvFTSSDqRUoyGx5d8upAHshQGkgFpnX
	 y99KqKjC4wF4jTCWuvXBMNWdjkuO5ncmWM0L9+QUlFu/GV5YkZqN+cm/N+mG2tKFWy
	 mLen4UYyeUTSisVcKUxdcTkD3mfxkziJ3eQxT7u36XyVBYeWDtYefmBLWPR/lBhe61
	 ab3uRjDEOnCbfWcc6U+pAjR10PD/YnLe1fYTW8iPaBFfRUPhbAArTft/gLgItfMy5i
	 c4s/cp5ZE7l7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F402C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167127728738.30373.3223624269490614609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76cc9a9f5af4c88419308019d22e89ca2298db89ba72f84a8fd594b14d9bfff2
Date: Sat, 17 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671277287
