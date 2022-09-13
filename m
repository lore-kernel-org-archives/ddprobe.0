Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7F31FCC
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717E3C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663038653;
	bh=S0+P45kH58SDMZLxUlUKQ8TvAvVxs9beK/hJtfc5rJQ=;
	h=To:Subject:From:Date:From;
	b=j9Y3X4rezCWcUSU5dIhhsxtuKLO8SzioAWLObX78PcUtICdEueoXm5m/UU1pPRbtS
	 jgjKoF+p9qOCqc/KCSMt6S5gk76K9kZ6QO1v1yvpBOGyhQZY4nXEpXCl6OIjKDkMc+
	 GfdYdM7CGgH8UwOHz5BgTAftwDJLX0WIFiqREZexNBWbDh9K4hRB0o/patXihMZlqv
	 xEfYZDIeDr9mg0F+qWMX3M9pZswElBJJtKZFjNymq1xu7VsFVYlfc//gyILlPohLf+
	 g4rr2pmZFHSKbs7XN4ccmzfq8vK5ippmWt9Cs5DNEj0SwT1jkvlqI8ikAUgYgimj5d
	 nQSsiTmhR4Q2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57980ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166303865335.19568.18100728403028435817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe6e1edbfda1c1f1e562646fd4e8289e60e1fcc7e17a6cfdc284a657dba2610
Date: Tue, 13 Sep 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663038653
