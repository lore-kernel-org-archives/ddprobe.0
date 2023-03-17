Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C44F7475
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 17:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED71EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 17:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679072466;
	bh=Wt7FQomYQjiIWWgovuXacElFn9WfYp4ZVVaIII+x4Jc=;
	h=To:Subject:From:Date:From;
	b=vAEjHmRCJ71B5bIsAp2811gWozIVYNdQsXhtL9QU4apVVTChi0/2vagnHRNVCxyxx
	 jvasaSIKAbQYFeaZ+L95Jyu3APC/Eb0fPLxk//CenLDcjUa8xUl2/hMvWqR8VFwgUb
	 HUxF8oSL2GCHGgcdPQfHWWVn/2yM7fMbsqoWWthiXNe22zfIQDqy17U7R4nOk83vKu
	 TtMe73HWPNd6Zg7mkAS7P5UUaG44W1pZgztwYBei7Mwk1HXO/04nr8Uonmy4VMma68
	 Fu54ov/VJGDZCzbuu4jrign4/VfmY6xBfDWSdWaAsCYYfyvTnkyZzCFbJ5lgYj8J/T
	 eE9KjwTpDcRtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECB8C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 17:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167907246583.29667.16484773108350583371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5803dbde194d24ff0ac96c15390c931c9924630aa1be02637a1b9b39ad470d6e
Date: Fri, 17 Mar 2023 17:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679072465
