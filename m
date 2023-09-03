Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818227F
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 10:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D0DC433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 10:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693738448;
	bh=pbp4UzLocnzI+rKRLKRYFHVmuX97NagdMV4uxtYZDzw=;
	h=To:Subject:From:Date:From;
	b=feZ2zd8JCh5/9u5qGHvPOzYuBPVlXGSX8wk6RMik9Dt51kUZM7U+DrAdh7/VZK3LY
	 QoK7Rjpct3lwViEzp2eRCve/bT0X0yScJhjvjbtxnkUJJ38ZwKrcVzlzDx3llchZhD
	 nSVzP3R7joJi7NLf/l8nZH2bQ6I+evfsPgPD6sgr8Dkmc/g+4blu91uUgBTnIQX/bQ
	 8jW6ZLI5qFlEB0gO4hf5XjivIgRXdv58UNpt303ZSCbywvak05firb3BrCWDac/uHL
	 7TnIujHxa0/3ajAZ0hp0DP2neCCQC9ZjrjAI4+Sr6Cg5MEEXvpJjYL9DiYVIMckTce
	 +5nOVcH1NXjVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1B8C83F2D
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 10:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169373844868.13504.15878130423182473568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ea8240859c35892e93c7ee641a9b19ce5e8c7de4c4d395ef06ea3f7eb5c65d
Date: Sun, 03 Sep 2023 10:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693738448
