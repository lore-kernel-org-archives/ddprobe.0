Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC85F7C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BBD2C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663430453;
	bh=4/WLUMttLqQHnnFeaKTjFhX/xYtw+e/mPDUxOfmf9js=;
	h=To:Subject:From:Date:From;
	b=RpXswdLBoQV7/QW+aKqe1VHm6PzK230eHKFvMyJ6KopE6BLtPRbS9d2UmfL+6gBGF
	 72/FTKNMJM/YUfUQF4cwjlOIm+2UKTQXZL+IoOCdQZHmfkOX1Y20aUErk90Sntm1KW
	 JslvnxaRI6dxpvyP8cd1u/XuvsJ2gNGecowh1CQJ3lBrMRHNUJJ1Gefijzur4+jjyR
	 CAhtk6L+ZSeZPtns/S/3KFGq7XymFrZvnsREONLs62ciuoX1zU790HwCiFIKg/vxsT
	 +zZjaSuqvfjz86pMtHiMB7ufBqQayknYyLoliLookNer/eFE3AZ3YqUwkuqUIDOCU5
	 VY8vvHDMdXBIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52249ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166343045332.757.18061038211375490899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05db21466f6cd6a3c1ab642b6d65aab4382dfe453121afb987cdc4d00b17ab72
Date: Sat, 17 Sep 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663430453
