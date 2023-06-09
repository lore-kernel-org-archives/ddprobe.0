Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F7463D4
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 11:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93A6C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 11:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686309365;
	bh=Uhq29WR4NvME/Lln0gsIfDhy72Fv9+SYMbFS1nZtMlU=;
	h=To:Subject:From:Date:From;
	b=O+86GTY4vtAtV7HGURNPjtIATd/AICHBBRfXAN50dRel8yS3XNZXWHZRSdkcWs66K
	 wCfaxJtW5xXwyI4Aj3sZGd7mTEsmJDXn8R2taDlTxy4kdEFYPkSYn4buuX4MtjgWxd
	 EwLcmHfCDUNcPf/5QPenPbXtcj6a2IGOkWT099ZTx/xaYkK8A34/k7bLDNjYrmnqb7
	 Jt88osnQOr1RT6CSl/7VtoUvQC9sN40FaxR7N86dxiiGnzThPjJ1LzlDg55ty9YQFd
	 0xxy16luWDpxbojE6uKD4NZm9UHeGY2cLSntZdzTkvL1YmV/2y1cya9tUBScZN7+5q
	 lTjAcolJs2hGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE9AC7EE2E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 11:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168630936576.10826.26047757128306549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7300515f7bc30ef4dce917b225993c54ed90799171e1dc354395bc2773d03cf2
Date: Fri, 09 Jun 2023 11:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686309365
