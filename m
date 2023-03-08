Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D78647
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 06:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1656C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 06:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678255866;
	bh=+1+gHn7mUD/fr31w4azSDniejeXB8PRCo3F6suzBO7Q=;
	h=To:Subject:From:Date:From;
	b=XBTI2o8SiLw8bU8L7z3+zguM1APTdajzbXtdA7e6C2SViDtw6alqaYPAez47Fmiyb
	 2Ys/fWdp54egjsFZ6L6JeOsrufc1gTrNCfSzc4FiG6XNlbu5ZBL4vDiqoudvxh7bVE
	 iztuQmEMBGChBtFbEuWhqkijjPhHWFkUrEu7fHGsZ1W0pQ2LlfXJTMefiLajtBpVE3
	 W1Tp/HG71vVM+ojmPItWXyozxOcjxgh8BMUZzHozLV58i2O1ePwxKckMrMg6Q/Sbkb
	 wWgswyFtFGAKDzeBmA3Qb35zfeHuK8s/aNEoJySRpW3eytf0blabLNhp9sNqfBA1SX
	 tW6ZLx7FsEjww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9950C64EC4
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 06:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167825586581.31251.14228873937264438718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad90555637f8fdb1ed5801df3ccf5616992f53d3bbf9346076c722f0e6a8410d
Date: Wed, 08 Mar 2023 06:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678255865
