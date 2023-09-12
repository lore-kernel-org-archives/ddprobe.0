Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC825239
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 11:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACC8C433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 11:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694517848;
	bh=jhGS7paI26WmmTTyFsABoF7VIMDyEEMxk7aMGCErinI=;
	h=To:Subject:From:Date:From;
	b=bDBY/KecLc3rOdqGZFsgxA/dtq6ieES5Xlcz09/8W0gF2pAHGYuGiSeZOuC0fxMPY
	 DvPnglRGKbVBgAGDPf6/VGDjucKnL0kLWu8LceQdvw+MISPO32eJ+RzmcFHjJPerYr
	 2EgjQ+JhA7DB4ZM7e3iX8jO8Z/GdGkgRZ/Won+e5yE99COaKacFIshNn/4K0gU/AmN
	 SdXRTsBB72KkbwT8MgDFbPH4X/xM1xzGN4qnNoHFJQmfsDz9K4HvplQmDeJqt203ux
	 PvIzhL14HYxgehC9gQY4My9SF7cbb9UN18bUObFJq09Hq0t/KwCNpQyDgcdd6LejfZ
	 B3JxKQoG1zX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD379CA0EC3
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 11:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169451784870.2831.5780070866919953332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afb21a6e46bcafabc0e9c4de42ea65d26b3f4beaa82b1831d6592c5de1b1fcd
Date: Tue, 12 Sep 2023 11:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694517848
