Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7CA8F4D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE57C433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666332653;
	bh=LA3RP3d/RT7Go9UPw7tGnrXRnjQ+I4jNvBO6DajL3dI=;
	h=To:Subject:From:Date:From;
	b=nSA+AnjHHEa+MI9+9fxF8kW33KRyEGb/55AMyDnqG79oMLz9o0I8I9juiPLmjJRw/
	 WTxZBZEoQ9AVGJOw7shbPF3J7/IP1R2YKOWkDZtehZW5iNn/O29cPNGr0b0zBO+4A9
	 nh7wuxd9LczNPAW+bstU/rqYuSVhHZMS88coYKekwSAXpOeNuW6zbXnTM4NyP7rz+5
	 FPB/WYVLV+a4cwpQ587/Ce5MnoQ/n79RUinyslch+mtR6Y+lmwHBsfJpws5Ad6xkvI
	 vljogbQCpzWU6T5XSBHJjaRYQRa7SzRJAdcFvzhl3JWTiqGbVIQEB3Aa+QlOp5Dsef
	 1XMEGnmRD3SGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EB7C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166633265333.4187.17342436070150692006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437178b51711b3d89740fa15fc56c81183f70be73c3ca93e3ecb2d616a2847e0
Date: Fri, 21 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666332653
