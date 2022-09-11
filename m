Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0737F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727DFC433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662868853;
	bh=XAjXXhRxz38bLyDLMibr6LKrSJjIzzvtKlxkW2RUcms=;
	h=To:Subject:From:Date:From;
	b=XW4qeGe4Y9P6ZIqs5gTaf/JlxrfRupWS4vxvL8V27JIJqyTEcZw00t8yAv4EddPEf
	 JfPIp7REjhLgDvFSG4Ih9fHeYKYQ9uVnSdF9r9DwIlkGk9ZwmEhMPEzo0zYU2Kjimk
	 +KwH7Lp5CYaZo9uIAopafoOZWRPq94Tl4DIyQ8l5muPsZFqn9MLqYw2wKDw4HNxMDZ
	 ie01vUGH6AmkND/Mr7A8mlLxsud7z3cs+kSNndeEL5A+rVaIrfxfI4h1Q3U7uHI7qH
	 yZDLazYobaNLTl9PxN+KDi8Zzto8wMgCei1l1FRmNmD2w3+3fhz2kH46ZsOaQqzgcC
	 hskd61y1E97HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55795ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166286885333.5902.13471150975705591346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d577ed7f46f51f8e6ea86c80a1f865031a9e2d50a7fef916c1a0d907235ed7
Date: Sun, 11 Sep 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662868853
