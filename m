Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C391933ED
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F494C433D7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664889653;
	bh=4yL7EnlTVgB5W8cpR7LAgPWl5+o+p6Mi4Y5KK77WTmM=;
	h=To:Subject:From:Date:From;
	b=uOdb+lizKzLAeLYOZ2ICiPu4gqawDE0i/XpUZP0joAYevd98VKNNiKHKC4HJmq2ah
	 T0Pl4zujFc0tLeAnnTgFi8QkznE7HgIv/ooOowyFS1iKBHs+gXyePj/PlRz8tQpu5x
	 ewhjt0n2po/e8K1RIr4OTnGsHGMJ2jcD92zP1juVWwHb3u4a4umsc2tb9PGcvHSYSh
	 2r/CGSLsC6oO/Ovy1/JzJr6U7K5SYT/TK0qE82nZCYxxcKIZjXnJvffVl786Ih+O2l
	 5vg6UboIPanZTN7A08wTI/5QveMX9pvVaBR4Gz+T3lKMS1eg4f733R3VVYcZOlitCS
	 nwRdelkm+Koog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A327C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166488965335.30852.13660839741331476629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dece273f5dcfd1e21e04184caacf3bbb90d00c15fc2209526ad154c75fcf702
Date: Tue, 04 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664889653
