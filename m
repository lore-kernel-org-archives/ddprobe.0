Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77867B
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E62C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667364654;
	bh=mRmP3R1+kH3O8LAWa6ZuofP1qA+40XSZ7xK7zIZ3+mc=;
	h=To:Subject:From:Date:From;
	b=Z9p4OtdqQY8bxdI8jV6JugF5K6svA242juPgaLuJD+Lea6kIGxEOH6U6isN8DB9LJ
	 pZkXXzZ/8TJIAijWmUvZ+CXmQ8h75T8eZ+TJGlshwvAUecsswgwl66xxRxnj+o5bOK
	 177HY1y+o2SA3UGPVOhpWIXq9bIEa0NKXMac8V1rKL9WzCAG4sBHoz28weJpRk8Kv9
	 uoPRT848sSoKFCwhvipe/980PSbA/Pu80RUZ5n/xfEVeF3IY2/73Q8Me2ufkoT1x9F
	 HXPgTKpa7n46n4vRb2IzzH92bq87I/K46mMTvaxgAATKBxuxdmH4QfWcnXuCgpeESm
	 vjLyMWTRCYPRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58773C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166736465432.28084.9814991956739112420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c21bc365fae66e0e0256a975299fb25adf98d027052acf4255fc66c23c9f14
Date: Wed, 02 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667364654
