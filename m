Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612D52578
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 19:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E35C433D2
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 19:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685560445;
	bh=YTn8WQeehssVMNgMlT5Sp+SuxUIB3pFquLz29S5RabY=;
	h=To:Subject:From:Date:From;
	b=cTrrNcZXYiN42E1+wwS4lY4ETFXysm3xXq89Or+p92jLzizPeiAiZdiZvFbOgM3jh
	 Ybf6C6Lhauy/ytdBKDAXV4iMUUIm7yiMkKWYQrX+CzAb+miu1mxDqBYHxybyaq2BJT
	 80R1zEmHRwIJR7JVpnvA1S3iTwL7A2gcIfkHgrRZgPo3aRiHjQhxKtrcV38ZlN3zWy
	 j15NECg8Ge5BzxTUFeo2QnSvZmgmdoB6mtZcQCdelxkw4P3E2WIZJKRrqBx1cs98ZT
	 BfE1A+r4GjpFnhkANiAMhtzHE05iYXmootOoVaT99pt0OBLycNUSNcf9BNu3wlGxW0
	 ONxyDgDonjovg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A8BC77B73
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 19:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168556044579.10456.10140850938313474361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3155edc6fc4eff2fd7bbecd789605bc512d1df0f73cc22fe2c9f57c25e0731e
Date: Wed, 31 May 2023 19:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685560445
