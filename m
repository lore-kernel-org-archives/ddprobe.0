Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D6F7E2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95D6FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673723487;
	bh=OzrJ59yksUmeLvLonX3HiYy3iLbuBW2RSpGpzqOdAwc=;
	h=To:Subject:From:Date:From;
	b=lmSE5Iw+QC79y4HvH5Yujr0FXakgY4kGNATyEQpEMVCsuBANzTP6ehB+cZk/03sxy
	 kZht23vf45nPVP56Ao8ttdOUPofL04Bsmhh8/h0tFLytZIDR0fjvDhD60+2DnzulFU
	 cnhpFkutsuEmZ8I5v+/XIuBxKXO7C5GcIwscjwqjW2cYB0t+keLRfY51vF86ENcd+P
	 R5DISHKFifgHX+6fEEcXFjzFrSK7j4geYY1tE1KKok5O3BP/Mu+i752rl3ELIxT/5v
	 Z7B8cS80SCZhKw4Rs7NO1RXu6eYyjdAz/c8nAauzl+KHCgTe+hoJZhmzSQ95vxFMrC
	 xRJZfDpd8L/zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 738A9C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167372348744.9591.3252839528867014863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a38c4556842a944aa51a40d098f6c4f7e8a7738efaef7b3703edf86934a9d04
Date: Sat, 14 Jan 2023 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673723487
