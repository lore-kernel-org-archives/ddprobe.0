Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1906DED1
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+un7tCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A015C433C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698032296;
	bh=Kv09UPUx3m8IoKZToQN0vxYuFP3UfjrQxJDaZ1xXA7A=;
	h=To:Subject:From:Date:From;
	b=P+un7tCQlCcRuMGn4Vrki0fHtc9ri/ZcxzEIZALGsLSg5W+BqTBsZmB2spI+aZuky
	 8SVeCGLLvhYfwdOdDCNHD2l/L3R0Xu+HINPbHOu2kosJnE21d6hpBdisRYXYPe5eeA
	 hV6t0CoApYdoXYV9gva3j+j02s+DUQTiwWotqKrI3wxWPFTskZJMHkJoXCKWXnOhxt
	 TsTbLAGcf2q/kMmKyLeWyYVqVBjFM3c79kgxgRk/OC4/EwSzT9aXEbXiR/SMzl2s7K
	 AGQNAFjp+1PiRyNlP2dsE+3FkSar0kYbpLITY+640ZG/Kl+X9xT49duZP1DXL+rL9F
	 hWjqRnrYcopvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69810CDB474
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169803229642.19694.14532016041663771360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddcd3fa25da2e6be40216e04a906a96210e8aba1d1d59b3b2dee2cf575d71919
Date: Mon, 23 Oct 2023 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698032296
