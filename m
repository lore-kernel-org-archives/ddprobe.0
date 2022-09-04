Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C439028E8
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 687CFC433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662294053;
	bh=a9UiIdHYzBU54If39v3sgxp8ABXokl2TEyWYWcl2ABQ=;
	h=To:Subject:From:Date:From;
	b=mjl7aZ1YzKxaD+8eB9AIJnN9go6tZxoP0TW2qEqEzDE/Lhd0B0gIZe6HDYaNSc3B1
	 MMDV37AHLKY5Ea3EEvNjQJEcIQHIBImDsl9pEWLrW4VDBwaep132huhkr7Ugd9CtM5
	 6M/CGFZG04L6+eJ+h1pKTaol9DM9B105TfhNzf6z3P/0jti9FEKrdYnrH4LLxq0NLH
	 V+6BmpLHVTTlZOO7vsizoOM/ufgxVz9WuuZGA2noncXCaIZkqEVw34M6Rc9ImUVOHx
	 HPLM/32KZfJEKerurdp4bLnWxLbIBtPErXFdlvUUNWEkB9Nx/5TA2/RFwiCW2GAf9V
	 duCsb8RRJDrSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53ECDECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166229405333.14676.11656497468615458425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44bef1379de5ede9d784954788e275385b177cb5fab2f136f9fa1d426f7fdad
Date: Sun, 04 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662294053
