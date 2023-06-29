Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5382315D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 06:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC17C433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 06:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688020388;
	bh=5bFUXs7z6LmNJNYJSkFpvL9y37hJlACTEnhfhuCgR5I=;
	h=To:Subject:From:Date:From;
	b=kRRAq2Ev6ID7Ro0IyKxj7kRXEXoCzA4yfVtFgMDtGn+Xer+9qvtSqC7SwDNBR3tVV
	 BvU8tjUzfpoigK47KfII6puR3uYxbR/uDEXFTvEyw4JLFfCRMcOHfzO8X42W19NauW
	 iAn12V1+5nvDMfVe5Ubic3kqNcHD6hLeXL1VydGn7HlJa2JUAO5ioSsde96olwTG7v
	 QtbnzXsQqEfvCcCDgrVVpVgAfYOd6axB2jYLdeqza1QmUuNlTMQo9Rmfqkle7yUOh6
	 bABb37bbGNJBm9lWkdLfLBO0zc2gelSGln1b2cMVSGy27eycLJ0i2+95n1n2uDlHVb
	 p1Y0XQgfOuPKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB64DEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 06:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168802038869.4658.1762892359773724214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a80f7cbd004549d4cbb2c7b58a445ca8dcf3ad71635c6875d34115e02fad85
Date: Thu, 29 Jun 2023 06:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688020388
