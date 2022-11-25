Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95AA17C6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A00BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669351854;
	bh=ycQxySw+sKOkLg5pSyQGSHZPl02L+I1e7JgchnGVieY=;
	h=To:Subject:From:Date:From;
	b=rF0vl3HO8tLMK+0QxrhAPWJ8lUwq9TdrQfcC6jd7Xz6iM9QaarhXPC6NGfs1BdCeI
	 X574RkfZh15bmNgZ1498W7q28abmsqJ2U1ufNliGDTdisUh/qhuINnbQu3Hjw5fHHm
	 +bLA4/lpZzInqdcGSHBfuVCMAq0q56Z/iY2vEjxC/++WwbYqge5wJxSpHTLWWTFLW3
	 W8FDG4Mc6zUJ4P3iFlPx22GqTCppeto1T+7f+j7ZlhVnD6ocR2cw5WihfJk133Lrfi
	 V6g1Gu89cxn9WCijvf7GatIt8CW9MqhaGXBM6nBuF0L1zeAaZPJBEb2yPjPbPrRjPv
	 7hXOlW2eArgvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1C9C433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166935185434.27770.15049743686612847758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8d9b2ca5ea899cc5668aa0449c629a8e12c037afc7261846154ea27c0de6bb
Date: Fri, 25 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669351854
