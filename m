Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3973E1DDC5
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMPYW4Cg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A312EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697815696;
	bh=fxhLogV60cAE2kiMHW6H5TlpKojaQhEyCsV6+OlF7LQ=;
	h=To:Subject:From:Date:From;
	b=QMPYW4Cg+2KiTo7gQxVScDUrS4kjqxJtHOCbaWxfsM3pgqDKVqHnEGix6H7G2r0p/
	 K+5JNfk4u5KHqk5qiZfutTbDx8Aavse52viDanArxdBbykd52WYlTwpigmMLksKOfc
	 GBLajnUMfvTuBjqj15cfWypK/+Ua2tJzpuIqUpupr00eZMqB57Ehe5fps8u4ukzJoO
	 I/ijc0LSTN1zld+MHRsoSDAHlv/tMKiVeD7Y+pznlocAEIfuDVA3BTGML/MfW3zWy7
	 oNnMZmHjmwdK1RbsDoptygbsyMY16mfOYpk06azloRVUVKT5+qj31DL3U8BBIFNjhQ
	 zIQ+V+5PQ5gYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8159FCDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169781569651.28876.11328392933810289125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1ab9c645fcdfe4bdbd726d2e4837220b6c65a5054940997e39d0446ae088c2
Date: Fri, 20 Oct 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697815696
