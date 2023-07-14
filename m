Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818B3ED0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 03:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF7FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 03:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689303668;
	bh=dHZSJ/z3TqMbgSlfeTWx5amVdHOQ3m736kPnNaabwcM=;
	h=To:Subject:From:Date:From;
	b=Nb4k1JacVGpujqGksbpI9Y70W0w1Oxqb2oiUNT9F2vhbnSrhBsRLI0/b0wSvM75vy
	 nKiaXcH0rZp3WXpj6X2suZ75wu6bomGclT9A3UpQGBhQFSLalB7PGS25TUg4P1jXTa
	 T++9JUK/XC2Nfu49TLAoFuZFCb5oG3A55yxt0lXGypYMjVug94ieVnboj504uuDsdC
	 4/VKyqe7vQmA70fE0xAHIxDFcLbV6j0qfmd1BgbEfNFjG3uDbkQ25qIHuml0pA89PP
	 gMkpycLaxxxbs3R8wOUNtTn888Imf52jQjRTuniQwy/Jqn0cHUTxU29a/pEXidcSNu
	 ouVkLX+MDQsOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3997EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 03:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168930366870.26049.8162337859192076467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538bd4cd160a585fb04ad62f4612667c888021818d785b6613e2c22843466112
Date: Fri, 14 Jul 2023 03:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689303668
