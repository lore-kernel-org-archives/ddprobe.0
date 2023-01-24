Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC9F28FA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 20:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3606C4339B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 20:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674592985;
	bh=P+qrIyCUvHNqBB2OP9cWe3ZpWt5aOc0P8QiPQnRxA0o=;
	h=To:Subject:From:Date:From;
	b=NF6DTzFCdqvvWNtkwQltzGx2fxwj0VIqEiPUfYum8ITJlaNEq+GuKGiMruawprnqF
	 /xVSRxF7Lpwof6UJ/WJY8RAj0+BbQCzX3ZIv8O7/bU5lGLdwusr4dhptZpQ2IqFKgp
	 wl4Yv8qAW//pDSK8C9127DytoyDK5NWSW8/x96GwuRXXd2NDmFlF0Vm0qhiIrS7hrq
	 uG4bhCionGAacpZHbYy771LxEeTQ56Nh2zHFbNOUtZbkTKeBGs+STHPhK3QREzs303
	 9SMeFn5snhJd063EEXPD7VUbAynIZcdYocbjJoVevsCcZsldRHvflqQSjjuSgRbxzn
	 BvqMLQV9rduTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6461C54E94
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 20:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167459298579.20016.14661204346629640096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf5fc07f4c6b30c644a0bd688635ae57a8988ff94daff0756b3c26a2ec5a17e
Date: Tue, 24 Jan 2023 20:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674592985
