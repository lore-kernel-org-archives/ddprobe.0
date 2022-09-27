Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3297F4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B20AC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664280053;
	bh=RmZeccjSMUjjNER8A7X5PQNgdKWv6sX44ueSml5v7GU=;
	h=To:Subject:From:Date:From;
	b=fmtRAfksz1lnvH3I5w6IE9ffaKaXtSGnSrQyKmctzYgBAR5jtv3NjZ67SIt3goKNR
	 7X0el/BdY3RD1N1h0w7b9livEd8mFoUfD764z2NmyUfHPTHRg3UtwIQrqsvj8/rTUq
	 Cg2y1M1MZitZS//aPZre9Nw6HImVa3l7rbeTUit+KRHfDkc0Os+y2sCFjgD9xWLixS
	 +EEopTmTKrKqF0cWvxHm3EJ8hZ8w94Mt2lJLFfj8ThiEnfkcHhEjryJCi00+q8Y74G
	 RoZ9mHSSvFwW0IHXT8zR7wQihQZaynzN30zXmTw/a0hDap9WMLObAO9cy4av6ib9gJ
	 7cADLJbeirvCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53572C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166428005333.2725.2499085640802039740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6b7f61e20a86565df94504125556b0a18b49339b69e89c9f2143aa421e16a0
Date: Tue, 27 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664280053
