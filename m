Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3367028E7
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 15:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC92CC4339B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 15:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674228725;
	bh=XjhXV2/hVkQn3lm0fYNPuxDprLKi/m9rsbo4gdcE9EA=;
	h=To:Subject:From:Date:From;
	b=lvsCYBtTDnkI7gc2XgdFroqP7kk6pUxHhdDvSbLWCCeAuqM/HuEbS8O4dIsFQaF0D
	 88cKCGrUj+qWILIUMzT7IPpBbSR7Ljy9bYWc2n3wtgzKqC6IfrZJikvy50j4RHq1M0
	 6OrddwOaU9Eqp7ujHLqaNsjSbQ6yMrm7MnFwGTSQImFrT6X8RSWSaYG3gUINdvRfCf
	 uKcM0CCWtOwPk9MjGz+FtvrJjcif3TTMsYLrNNwWD7s+pAoN+b5AZXUJ5d8Hx+JAyB
	 tlE8/3CBunnAIIUZpYXdyxZa3o51HG1z6mepOOy5H7LKaKAqTzetMEr/DNEW/IDmzd
	 l203s0FbGM42w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF2FC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 15:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167422872576.32230.264600384430447241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f934a27c27d76fd4348a2a682a235c0f5ef8c11dfa987fc7abb6f8c461d127d
Date: Fri, 20 Jan 2023 15:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674228725
