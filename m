Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBAB803
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85C27C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672117887;
	bh=EwPNN0jpWVDOlap+P3WbD5MsUQWXYzbeM2iBHNhLwCY=;
	h=To:Subject:From:Date:From;
	b=TgZSe5zyC3hswtIG2smi1rdObxcckeEBDwRC4dKFAUZotnTz+8UAc9YpWicbw1zbN
	 SJrhZwRzNTchfEfGSFEdmtkQy4a4Moh13nrtFww4lb7ijMW08GC077bnIrBifSBSpH
	 QqsxMCqY9sJtmh4Wz6OVqt4Cpylj+EIDCBLP9AR4K0Q0eXo8S4rVKDnZEc/dlHwN5D
	 UV30TejIlMWYFEknmcdWNbW/0S8lo/0uvsFHHUci6GmovOGFoCEKeaExh6Hn/QN0Wx
	 y17PdemV4ISuSNhMqQIgl8fWQ+p5fqEm0W/0IiGKGxkmOnuAdUqLHTV1dBVgds5Vpo
	 A7+8cBZLamTUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BFA8C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167211788740.10026.4385108081341600339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84763279c7e2fdbc0376529f458c186a74a3f7d72e2b59fcfbc46303a77822cc
Date: Tue, 27 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672117887
