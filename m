Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D544329A8
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87943C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673883687;
	bh=+DQsneTRLb3aIDhnG9/bVjqL9ywGdBbcMq+WZ1WdFRs=;
	h=To:Subject:From:Date:From;
	b=R/Usm4OYWtOBWe6yzIvQEHGX6btlActvmQcpxFw/JWRJ0tdhZUbf79BxCMSYrNjMk
	 0ehUSHSDCDP4DjOMRTdDYJZJaMHavLhkyTDCQH2VIBFBPnw1Nl8zOHuSanPPTmqrRv
	 H1nbYDjSrzpGe1hWzfCodocUNJZiURlZVUaMA0ibqMY5Y8dMpuchs9H/yd4kSzHZhx
	 zpLHjHTqnNcA78BMMyFIfbl33aLbVWsruAEg6pTe96bVK59qTuWyOSEC2v6iqgOita
	 UYVcPgpvaTJCmQ+ibLPr6lK/aEeY8RujnvrgjEhKpv149Peruh7rMd4TfLeXXrxnTq
	 iewccsUzSJ5GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68702C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167388368741.26252.5704670974036769828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da14f755efa02497f48204551dba42d526d13e322ad961f23d02930e8e277a41
Date: Mon, 16 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673883687
