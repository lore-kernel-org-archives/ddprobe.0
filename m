Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2882569
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSDT04KP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F941C433C7
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699225096;
	bh=tauuCCacBGycbRP7NWcQez88QbWcGzLbgGkZgZGjdeM=;
	h=To:Subject:From:Date:From;
	b=QSDT04KPNX8KL89b8fVjd9vKKMhkUJBvihiOrHgtkc94s/waCT7/DEijedKyTAJPo
	 r4IDLFvb38AMSVN9jh28cXTAxmDnTBZRmQkG6XdvYC79vWHuqDjkpffZLQ+49FhpQT
	 RY0Ooa9QanaxBSfgscCIW/xxhUwBCuLqx/Q2NVeth3t+m/hmEMQHSU0dvGaQFvDXWy
	 NDms7QuLr68wYvSi1JVX+bM04bJ+70JBnTKh0PGI6+H3HfbWvhMX6Ur/4+ayyC1VW2
	 8AtU6/QznJSW6BeWT5zgGUD8MUii3E/EN8hgWQvxZy62+6baidkEtMe/oAQQFwZ51j
	 hBky0YuCXip0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73AFCC4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169922509646.18532.16303139083064447137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc679cf2cf7d224739736e3740ac0de0b22b5e076fe0e88c09e223a8fcbfb4a
Date: Sun, 05 Nov 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699225096
