Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715D133D6
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 22:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06ADCC433EF
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 22:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683499686;
	bh=V8YAKpUCFafBH3umYaKp9VvfPSy/v7G9jtAQiAyUU/U=;
	h=To:Subject:From:Date:From;
	b=CCTXPm8koIHci/d5PlYZ/w6JUM7XUsJ/oj5jxqbB2Zp8ZZIIM9ByEgkVxWckOD7tw
	 mOI9Gjf29UxtSeezipzRbg1BSxCucY//kruIeHs1du7elgdEAgIrmZmN10DEgw/BHC
	 nb8sgw8EUNxzUQaE5iW84NJAqQX35TYDg3TlXwtyyQqMM5BlaR1P4XZ2dSvU0StwqV
	 ZXxDjvHPvjZc0nXPyI2w2SYlIrrWyRAH0wNheD/Qze3tr6u4eQ5jDFe6ydJ5ti+DMU
	 MI7gW+oiqLMa6eQzdFzMXDVIaYCY7wSMPm4gW0g1w7hlhiSmkAOb31u0N5ajOmFyQ/
	 N5xAoGNYveumg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D1DC77B75
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 22:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168349968582.28244.5852870848144607674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9dc17e5f8029f58f517c9635b67accb18100e62d9a8515c6c382bcba889d28a
Date: Sun, 07 May 2023 22:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683499685
