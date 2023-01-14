Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E8F2F3D
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 811CEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673737287;
	bh=4tuXzezKEVfZa0APgOjAbW7jphf3jvSTOKymONHTWVs=;
	h=To:Subject:From:Date:From;
	b=EBfEg/KWl1l9Xh4Nj5pm+9pZw8PhbL7+7o25TwErf/U782NcsDAGdVDlIDLta1f5x
	 SwtFD3t/watGxYAJfiuiWWrZXkYU1eY16IsNxbxi5FTrfi58jVAuzXWM932d3UCnYz
	 Ky2GwXYRBgjD5eRD9q/aRexD5h4JPOZCwRCR4cSnLBaNtqT/JKQHMA086/gwYnhSiL
	 2FJsEnQbstW1qQgzv6OsZTCqVywQsuaSnGn5fn0jWrpKIOsebghrLwvsUiZ1L5nGr6
	 agIDQA0SFMN0fVxc7HAfFlBnB+WfxUFkBA7Bqz/TDYXe8is8+Dwwefy/4nl0k6n0pv
	 hGCdrRr/sYnrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64626C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167373728740.17236.9137536714709452699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80710f3aeaf5c9a2135cc912cf9e4052d437da8bbc3d1d779ad09e381514a7a
Date: Sat, 14 Jan 2023 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673737287
