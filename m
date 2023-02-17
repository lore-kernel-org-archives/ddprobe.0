Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FC4366
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 10:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBC4C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 10:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676629985;
	bh=7v+QuigWsyn3Cd5NhcIfnJJLBXOOKJxAw+WBYHP4R3U=;
	h=To:Subject:From:Date:From;
	b=U+hv1kFv09k0IY2e9s7nC3mochDpI4LXCMV3vFVtCpS8zcjAnb2va0zLTgiODqhfA
	 /CtcVmfFC60fqFYPiOyrfnLQSVDzuxnzMx+euavwW2CrhEfgADmVGuOHpYLSL1D4Dh
	 sE3drdwlGkqbWCx8DVL0rkAYEniIfK4ojkVin6huosKkdhMFaanjErcC/gyksK3aZP
	 hJhEIjDQmN2S/dTSb9C12zk6RswxSvmeprtuna64Iz16cdHXebO9lCIGkfybzGQkPk
	 dUaV66LotSFEQZGvyaJzhnwpzCXFc4nhRm0Nn+HOxxCF8zAq9A71BJQiTpIfHbckSp
	 OwkA0GaUJqbNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26CDC636D4
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 10:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167662998572.25846.14202338759986974595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2972840e0dfcab5281fb5b059413b80a14078337a94dc00006bdddb13282421a
Date: Fri, 17 Feb 2023 10:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676629985
