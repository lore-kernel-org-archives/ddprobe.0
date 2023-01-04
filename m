Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9CCAD38
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82687C433F2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672845687;
	bh=NepYNRGNOQnDd4k5PFDlNLNs2JGZFYapEmaiGY/IKLk=;
	h=To:Subject:From:Date:From;
	b=dgOq2kIxAxB0COjCQuArMkIkp9OJo8kOGia5EUrH0o1BYj9Am5EbUh7RcYoqts+zK
	 LAubLZVOpYYr9rHFQdJoWyaYXy/S2VpDTzIZ58/7cb37rwfZ4ElISgltatGj2n886+
	 hI1qGpg2Eb+vkyX8Vfh2qupu0T2pQhN7e45smKm8D8rwMCYUG3S385d+v1qKGE23BW
	 wqD3D/wRc4Amyaoe127lS4ztO9ytByWOsc7RMB5tvS1mdoR5X962qj/s0ECUQ4Wf4I
	 PnwUksrg/wCw3CxTofKU8WYdp6W/tFRKSttqr6LbKgAciUcMilulT6ikAVjOLyLV+R
	 8j8MGusxc3GRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C8DC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167284568739.6713.13821820055008490250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53cc39623cd7c03831029da8795943f9709b7f427dd2b6b3073ac2f3747d7120
Date: Wed, 04 Jan 2023 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672845687
