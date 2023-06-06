Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78149FBED
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 21:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09171C433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 21:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686085926;
	bh=id41r2Dpy3xj30r7q7V4dMGADofrEJLQTxJLYFslSpM=;
	h=To:Subject:From:Date:From;
	b=kkI8OWtpxyQo9Z8IcmVIBl8asbzRcbrI1ypHVvqjvR+Ub+MNAcShHhh4R0lAZjxhm
	 yh0qsBSOYinoqd41Ft6bO0g5jtCR+RncW2W+0rQIPFOutMGSfodCi/uji1Rl/tN8/F
	 exs6jMcml8L0JqaVZu+wcrQk9w9EZDw9EFGrAI/xhzzD4Rci0vMDvwyQe6R86s5YFL
	 tZ/I6KNtnXa5b2k+YWTicZokc1hsk1NWyi4Nu43TWuRqT08sNviSfZsXtdU7pj1jdM
	 pAmf183jb0I7H+kbBzgeVdYY5j0jcMpGIhj+ZHSa2X9wEF9dALJrFE/VnFipl8Izhl
	 q5cobYpsk2B8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBE7CC77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 21:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168608592589.2608.14967041697961943957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0321860d68404288ab86691e64b6fddf5bc12ce3a268ad7da671f8a636ae9ec
Date: Tue, 06 Jun 2023 21:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686085925
