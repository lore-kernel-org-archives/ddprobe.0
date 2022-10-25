Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FEE6FC0
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C7F0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666725653;
	bh=UIuR7q16gIqsy6fQV+W/0wwFUpwgC4993PGj7UZjBDI=;
	h=To:Subject:From:Date:From;
	b=YjTpO4FdvvtLgJ1UNmuXVa/n9dW7dJNyV7coBlZpe8rbLJDu1tNiyxYQlZ4eECZbb
	 UVD+nbUAm8DjU6wGV8bDArwzmDmAbcmuuhvsXdgHUCeFGopkyE+p04l4lOPxTMNxrE
	 mAEMse90+Gz4IPsnuInYYucbbJ0WxnFv/OKfwQJ5a5/zubwwf0tGbp5PyZ7rTVsu7j
	 0Flaix3juRRNJGH1270o3RoN9wv3hMd92tQJcGVEn5O7dvowrdHiC3seOWLG6GT6D6
	 LjR9j+4mQNpZup7goIom89m0r5DG4tNeZiigjm93jxBd1Rp+Cn34ouJ6evZc2UZ3lS
	 Kdzly2l0tSeYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E2CC38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672565333.7920.5306375926814182776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4452ee46cd6f019f738993a02d027647669fcec8d053b5ca27fdc01e4575c32f
Date: Tue, 25 Oct 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666725653
