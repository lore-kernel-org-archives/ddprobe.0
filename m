Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB3F7464
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 22:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5D8C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 22:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686869948;
	bh=XBzrKcpZzkkk+HLs1dVp/Mx+9ThrZXFHkPE4NphMwFA=;
	h=To:Subject:From:Date:From;
	b=Ilfawa7EPOJeS3HX0OgPF06TyWByP+lu/G8ig+BIwvKKCOA2492/omXRz7jRj0Pkx
	 6YBQgcobRGT0raioONBXdRH4t9ntChtjWX0nS0AGQ1mxTyxm/T+sBLe3CrKte39725
	 26orIgg4wi8o/2GTC76gQRKmmqiAI8+QiRYOtRNNnC+xqsEW1rjK3YL6GbZPraw5JO
	 SNRFMXR58/76tPW7eqb7vW/P4ER3Nu+Myd2EQv7cuUS9FmnGz8euuNiP1UZXNNZ80V
	 C4xcbKxERkwJKpfrl/czpLUZ+Zy2rtGpCqa0PJFb8is3Riv0gKjuX5or0eARxoNjaf
	 wAB0f9UYJt+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF69BEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 22:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168686994870.11700.10709788160729160277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526081f533ea8b89515b2b4f10049c44c97a47ba00202705a330206e2952ce3e
Date: Thu, 15 Jun 2023 22:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686869948
