Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDC815AC
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D9BC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665454253;
	bh=nZcRURpCNSP6hvdbmBVUE1+pvxwU4cuL13ZqsmqxDlw=;
	h=To:Subject:From:Date:From;
	b=XpxyxK3ao0oO6WSRbs27xuDVNT/ftdAzuV7s60xpf9C1QPiZ4x0Vu8a98Hn2pJ3cL
	 Wn6wjJiqGe14uclkhlMvrpQGi28tcQ7/JyYpfnhDcVhd9FGcTI0qc5k8PAwQFU4Iyi
	 8rQ+rY83Mp3bt2elc8TQN3GV5Sdy4jvSUQmQd9aN2hlUXaYh+MB3aYOTJD+8FJE3yy
	 BW9O6878ok1lKCsy+PRYTsdFENJy6ibIcLKcvjLKwUBBmcR0pvew6ohIHh5R/zl+sH
	 4b92GhSwXfHik3ZzN9PcvDphOMfHJSrLDMu0Js1XaqR/Z3sdO5CvxWFanJQvSGKxiQ
	 38OJGXxwhr8HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E515C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166545425331.30648.12567181907762426008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0398db7e95baf6972f8ab26b2baae583482bed070c2dc61856971fcaf1da3356
Date: Tue, 11 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665454253
