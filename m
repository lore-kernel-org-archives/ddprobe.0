Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672D217ADC
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 23:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98DDC433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692226988;
	bh=ns2FElGUEGqlmbR9WWv4/FGEkV7Cn/YGOSBYPo7gHwI=;
	h=To:Subject:From:Date:From;
	b=M0vx8SdFeZ+tWH5rpzb0lX637Jz+HNm/C3k4Sk+ZK2hVLoxE+HnOvp3EjTztXyggy
	 pHjSm2m0u2m4jBC+U+LvkOh91AWCt5v4tCRH1cTgVVez0P7OhVG9nDI4Lg0NLepAtt
	 8fX27U1FEm9DBf0TlpKPJ7Dj20/YtCbPnt/dTMwRFeTunFPf5svxEn6N+SPFCje5hA
	 JT/rLc+vnahI+dAY9lAdNZ95EIXw6ds03qKYWeMxVv8HKsRWpuEmp6ARdRHsMdOdYD
	 UVX2tUz6fd6MdH7mhcN75gw15mfinCxzPptZVihLu4KU7i8+BQiDUTPalfKfn+Jl5h
	 RIuCUkgbyFXow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED05C27C53
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169222698876.1755.1869645713513234181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c6e5fb1e91228a284ba544e4f988e8dbcc47807b86376887e9c65b987ebcf3
Date: Wed, 16 Aug 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692226988
