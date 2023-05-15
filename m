Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A671FD0
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 05:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2178FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 05:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684129146;
	bh=dsGlPzdKa8M6UjJVDbBzzYk+BgiZGdhAk/zpeMJyN1U=;
	h=To:Subject:From:Date:From;
	b=UVuxAalYrtBV2F4WrPFtXcixHZCC3UWwT76MLKgFV0PV0ArobShYqs0GaK9CJjqpo
	 05u6SEfKc1Ef2dSDZiuI2zfFVHD9E3m5xVNS9IuXqigpsKWpn/lzMbp7KJ+r5SWhqc
	 SdQj3XG1Am7KoUjJeCI5l1Hp/ZMmuz+mV1IM1yUQ5o6PDnqBbDZsomqqyVOmIONxq/
	 iNDqi92IwDc4bDwZQ8dvMdz7jJ6+Qdm6wKGDIKOpTe3hJRQ28zLuShO3mQEhmu7ZUj
	 Dwf6hp5AphdsP0VGQcBa49uWCrGRqSec2BAMVQAAUs9j0sG8T8iDeEfs/myn/Gba3M
	 ZU22TSsiFcHyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 001AFC77B75
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 05:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168412914596.26275.9512431064368625401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa441ccb5f77f885e1fea2423e32ff37ac55d497078607a17421d30ae6fce16
Date: Mon, 15 May 2023 05:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684129145
