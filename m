Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D081FCC
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91DF1C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670134254;
	bh=RZMzhdsUv5oUMVjmJSAoNlVCEo7L1Xw6svCB7sC0HiI=;
	h=To:Subject:From:Date:From;
	b=Fwub3RkXoaiE+j4ZL1b72KX0uASJyYuwm3HKn2X/uIU2WiDlDaKpEVt32DEiYaRoi
	 KeUIzHXZZTs7RDpTsYKzTcWW1o7I47S8GKC3/uH/o3JAdCm2jtH42W5fulMger0AUp
	 P5QTtlBCdt99sbFpF/9Fj6SRd3hUmSIG0I1iWZ/8rvqUd8saEmvtHD1MwQI85+vcmj
	 2gIGT/5i87zvgezmhTkAbwqbWt94g2bQAK4wXSUs+BirC6wCoU5HGlOMnwNob3dlWa
	 L1UHQnIIjvytyxCAmZ5wegYn5LR7byrYuDOQhXO6i1E4IBGog8BMKLPkWgBrJZnszS
	 AzXGhY9FhueSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72734C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167013425446.17995.8704540515736991478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b1c9aedf5b7708627f398d523188220a45b63952b8b7fa6571f99183e1894d
Date: Sun, 04 Dec 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670134254
