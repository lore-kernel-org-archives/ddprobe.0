Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D5CF4FC
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 18:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CBAC433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 18:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692644048;
	bh=CXoq7Te906PJrcJ7vrFSgRhilbr7gcv1F1g2Yw+8DrM=;
	h=To:Subject:From:Date:From;
	b=DjB97ay3gdh673abJGG7bCROEnbxTiirS2M6Nz0UPg22hEds+T9IFGjqBQ4HtN/gv
	 p0xfIZnOnddSMiHQwrOU20V01moJB7ol3/xsXe8Mi/2Z0+bN6IscxsIIwSWzTlr2/p
	 FDMR4Vnj2H30SqogNkMbiRKfUSetelEgZfoHkCfuHwfVTf09UNke824jrXW6K8N923
	 GSY849ms0qLyWoaa0NCn7pSX3xRQpkcHeQbN19+7nDzB0FIPPGq9T6X/DN73rNG+jC
	 0aeUS8hKTQeeBFvkkc0kl0bahFAFIevhEYW+eWgfiPiGjOmCJ88x+mgM/VXkU59w7o
	 hdGZHx2y4kB5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85FBEE49A5
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 18:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169264404868.28911.17214221693713051340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a42dbcea88b474c9bd54c06bb82684becdbde38ecd97a176c4d223171c4f26
Date: Mon, 21 Aug 2023 18:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692644048
