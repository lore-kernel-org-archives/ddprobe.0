Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E93E622
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 02:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B9DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 02:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692067388;
	bh=XLZkO3v9Ax+8rZY/4CmzWDq3tLWc5bp+EWGJlZXnFNU=;
	h=To:Subject:From:Date:From;
	b=TghSFgBhiBysRagaCr3+Yx/dsGPc7+iMghYr4BVE1X3QfN6xlsQt2Lf16hZWN+0eN
	 WPlqljl7EfiFVtRo2wP/91TvFZzutAvdM5AAbzHH0tugPDKDv2VnlbXHcQbumbRfNn
	 xJVCJGI+tRbj3IBkctwrojNlhCLxOQOSkKikZ3dldD1V88AnNbnVvBexk2w48sGV4Q
	 WccbErnNH2enSrChvurrKi8b4kPi+AB4OWe/IpPrr3CO6Y7f0DhCPKWWojWouRtuTU
	 gtl8vpgGJdEHcEsbinrCEUHZV7VW1upEG41pwNmfIKAuZjTGe5IRnAuJnjcGHyZHRV
	 4cswd4aPARX7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB06BC001E0
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 02:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169206738869.5831.8546542279247560213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ce830f9be6ce7d54f97775097515c739758701564cf9fa701e70fc8d52d270
Date: Tue, 15 Aug 2023 02:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692067388
