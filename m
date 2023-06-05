Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7140E198
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 03:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBD4C433D2
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 03:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685934545;
	bh=IlVrAGYQcKt4eSdTHWV1LGM/cZ7nUoErbG4xGlu71AE=;
	h=To:Subject:From:Date:From;
	b=fNWnLTWodlCJ5cE0i74TcrrdoudHkg36c7tZI+BeCeojCXLAexdTPnd7YJSVQfmeu
	 Q1V+wMjKElp6v9tdwErFPmqzJU0l/VfhhSGIsOJhwOZVpR3Lg/NjYR9ehBjX1Iqx8B
	 Ys3CFFoZO/ssODB1WnZSPvXq8qK4nvqzybCgLf00RnRZ8S03B3yj6ZXKCPPvYgcCRs
	 kMCCXERqQhWb+YWMlO2tx+ydbqHQFdhQpzoWYaQtYLxWRu0Teq+612GhJBn+qkVFjC
	 TmV71gEjO5cpzVUslP6ht18Gse5sy9W3ddydwMhZ4UgwN8fInTmIlvl5bSWg8EFuxt
	 jilNBw++u92oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DBDC7EE29
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 03:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168593454578.9750.4893475899450822492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f04f56076b4ee3292a62d9586221a5eb9f102e8ac2afcfeff99b53aa8117dbcf
Date: Mon, 05 Jun 2023 03:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685934545
