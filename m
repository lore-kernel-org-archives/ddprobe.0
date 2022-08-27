Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1085442A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F0D3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661628652;
	bh=m2H79qTZpGlCkhBDgp+Ao5HLpoi5kC+b2dph4oTjGgI=;
	h=To:Subject:From:Date:From;
	b=fYRNBc23ItALNJxcnltbXkBResvjaSYaOzvPnU15wOiZFzsXVGF/GWFzu8+sehd59
	 N7EKNIEN1aKr6U53vJbMzLEwyq0kPoEjVark4Oy7vhM5zMlF9YDVZSRRXv+eA41+lT
	 neYjC87vLPdaxQQZldv2O3FMUSOYrctPS8Br+iboUZP/hOj8jCfemLSKCIvTSo6Dua
	 Zrz0TEomdrKcOHoZGCr3q2JYepfqb2pYLsS/hghfA0fbsLAniGWrRyZyB0a5wz5Cez
	 MRNOUgmfyAGdKRQ9mNhP0gzv0xIkb6EDuHQGpXc4O2nT750YbSEmwQuTDsygED9lHd
	 Vu3lhWTGMmUgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54299ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 19:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162865233.27581.17580086286074290079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14227bd7196e8e21c0c7de917a71167e9b1ba7cef4989d8d9641d6cc02e393e
Date: Sat, 27 Aug 2022 19:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661628652
