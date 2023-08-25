Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512451FD3
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 08:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC832C433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 08:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692950648;
	bh=0SHfGPGxza7r5TMkw+hU+9jhZWUPXSoQCbP92nnTewc=;
	h=To:Subject:From:Date:From;
	b=ndYGHp89KbYqPmoiAuRYgex5Wlw7Bpyh0CmpebLW+l5d+nTBW4UiMSMNltfHmjhDT
	 zNiLO6wy3itsYvJpb07qhK3JV6hatPrQn4sOulGR6/Wyd5aEPiLInYPHHNe5I9MQPq
	 tn2pPxFg7UfnxqvbJlohBVoAxkBh3+fzstnITN/dMl+yumrCzqqZuUk1b+qNUJ442A
	 vWb2FrY27bPYLx5cp9E/FQit49wmvtiE4dpJ78C9BtfOwqY6eOzZyAaa6xfqax1/UH
	 Rcdk2ErxvpkGwGTP1B5hkkV65OR5oAii8k7BF5abJkqfICOqfjtbHp8Q2BqN7yeWa/
	 i4pVINM2/RY7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5636C3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 08:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169295064867.30222.3062070772254525901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3656946aea71d6ab1833b6ea1e04336280f751c77e5edf3c598c0f17fefed1
Date: Fri, 25 Aug 2023 08:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692950648
