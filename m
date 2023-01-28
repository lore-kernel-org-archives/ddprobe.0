Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520223C0B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 22:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8145C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 22:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674945785;
	bh=YqfkynXndDUDlBXrAVD0j2lPLUGQBN46xRcot+5UR5g=;
	h=To:Subject:From:Date:From;
	b=PAO1hVmr2XKSDBvapZIq8Z/GroXKnvzDwRmBSIzaW75NGkDh53wBeqU4gvbyaVxey
	 BkpFFb9lLEosb0z4vOoPCzBqIbYUn0H/dxXcZSXIBPrhA7Efay70kcVGu9N4RB64Tv
	 vnFnPJnfBf3boVyiHVtmi29qZiQTYR810wDrn13qogAx1+5kucloZDyTh41s+ugb6d
	 zWqe2Om3YgoawjAXl/kBPrXcaekjfbYgH4MXH86IbBxMoysqwXkMbuQTCwMHkn+RcT
	 JC3atFQnPsSVai2oSbu10iCJ1LnGap8R7eZ0JpmKPSNhIZWd9dBAA3l3g2LQQfVIHB
	 mYg+IaHcNrgHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDAD4C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 22:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167494578580.26294.983779630772241382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697afd890c01840e6c248260d9d12aad4ac5b4db49849cf29987aa2a4f82c4ce
Date: Sat, 28 Jan 2023 22:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674945785
