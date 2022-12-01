Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2455C6FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF393C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669906854;
	bh=KQgkzsHaXB0fjYNG4NdtK0GmBVEdrGyMHLiP6CDisM8=;
	h=To:Subject:From:Date:From;
	b=WSIK0b8B2Kr61QBhGKhXrIToMC8xa+sUlPogQg/Nv3/nEcewmRoF8Bi7IgNOmM8x3
	 rnEnwbCic2joMnQCsJ4zSB8YLoeQlthw6z9uvCGqlqZl1mgZsNnh7K5KQPs0i8nl9o
	 uGae+d+yW0pIb9mLfugNXuD7v/sNFdyaEVfnuTVLY3rH1puUfesVONSu3VAaqk27sK
	 ADuBEVcWx7FJzPxBsz8ntFKySWVUCagpD4gm+HhvaQ58KGMmujLMWLBUwcWZd05PKB
	 cQ7VAJ6+hoPNw8ds2Lxwh/mYZBJ6DEga91H+T2M7k/oss18DTk1kxlivKwu9/B/zOB
	 SADYXgpaoGRkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A68C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166990685465.26874.9677855515182559213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fd3488c04140c257631c79808e0bba405db2ea8138b85c357714105c6943e8
Date: Thu, 01 Dec 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669906854
