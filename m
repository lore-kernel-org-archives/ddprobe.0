Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5324F7FA
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 08:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7648C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 08:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686992348;
	bh=a8/I3r7MLiwwlrEUdabJELyK30RPCcbbLU206Tqb+Co=;
	h=To:Subject:From:Date:From;
	b=oQpub2/9Ldt5PB53OVuDmobHlNxHe4eoJeBEMQLW8aX9ad/mOk0BPKvxomGOPUst/
	 7T07O43JCufTVRq9UiJsvvP3/QHsNdsIjJiow7EtrTGqvJf8eeeALc42BzdcmrZaGz
	 ddCK5kFt1jG2nUFnrOQ3y8ts62OkQNRXW/7IQf0ga8Id8JWUBB25nS7F6gGMuV4aj7
	 LgBfZnVXbn7ckpJkFj2VEG4Only7XM0MaZoexN8gfmRr+hX51dTZShweGlyKOSqPKP
	 WJx36JPTdvWQjLoamSy8iN2NsRInP+jLxbZTuqRkci/LlQPi7BR2BlPQAyPUsEwwZT
	 VOzGBWMwVkbvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8305EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 08:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168699234868.9094.7686585793841320841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d759164e1b31f4ca48ef12a671c7d9c305b3f2df4f1cbd9a4e881adf084d6c9
Date: Sat, 17 Jun 2023 08:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686992348
