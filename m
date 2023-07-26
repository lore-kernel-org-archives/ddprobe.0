Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A1D1DA33
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 16:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E65C433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 16:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690388528;
	bh=dH0L8Ff+29yliLzXXTKS9DAEVY0SvMVz5wCtCr0Kl7I=;
	h=To:Subject:From:Date:From;
	b=ltZpYlIBeBKU0mIhUZrV5iFQIW0PHUx4AIjQu+J9wg2YL1Mvm0SfE1Shg5kg1RcOf
	 NvWQyRnQWA8qd2zv+++f5iHoyuwzG958c6KjvUPVEVu4czimAq4PDNf/XET3XDGG+q
	 4LLGkDTK4UhX4O5Eprn6zyZ1WupMwVs9umewSE4GGLysUC9DV+7umXYU+8qUmb+tJ/
	 l44mILicrjCYxRFYtxZfsPL+W2gBGuhB4Pf879iRE4hjhU/WfeSt7pM3sjbdbj0Ucu
	 RqyO6JGTWrxbzCk2ub1hMUpmnMhGJBZg+mUWJw5JDMFLERuaL7igFsLohHGnL5J165
	 4iProSDvzfqvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52BAC001DF
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 16:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169038852866.31268.1496914587405324192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e60d97f26c8991608e4b55a752efb2d00ace2aed0eff518d32ebc09beb51bf
Date: Wed, 26 Jul 2023 16:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690388528
