Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4481848
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 06:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB95C433C9
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 06:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690956728;
	bh=ozZJVoOWH0ubZuvbfeztQH4UcaDupWUeWl53RBnryR0=;
	h=To:Subject:From:Date:From;
	b=MdyTPXoZLoeNl4IZ9Yky8gbdjIrw5vw46c3+iTPlw2YC/D+2mYmMoaOuEeTrPqEhy
	 wZMHF9LkOHac/dpHW1a0ryLRiTpa412aE7lyKr48xgb1kcPyO/WtirW7mYpvNPH2q3
	 nMevNdMxtEgX5+4T2+PnpXcRP3GT/9QQp1Ixe81VQX/uRk+epPmZVhReN93c1e6KuR
	 YL1VQd/OzLaVAmiqAi5ZOy9a2wwjtdVe0cHCUcxPXtgOkj1Sw3nXMOY61sM+H4+5Rb
	 ZOc4CBJwMhn7+BwHaQ1v7jeXNdct+0ORXRXePbh3TXtvJdNyrf3lb+Phoo4b/NhpbI
	 e5wivb6wakS3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF14C04A94
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 06:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169095672868.27817.15020722152286600583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6fdb71f3c307606405bbd5dcccb1a509e817ddb0db95985f457ca5192177440
Date: Wed, 02 Aug 2023 06:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690956728
