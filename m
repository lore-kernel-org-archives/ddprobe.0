Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D001B7F6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D80BC433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667440254;
	bh=lLQo6JeLr+LBHVgZ7wQSfZVP8j3FuH8G1e/lXxZ/x74=;
	h=To:Subject:From:Date:From;
	b=lR8R/u0Uj1LBM+VZ1adtdF9dvtCLifdVjF7WOL2BJDhx9eNgNoQFZ8hYzBVKjaxKo
	 QMEi1ms9UqdVchrSqnH4ZHQxdF3pDv1RNvYL4h5EGMwqrxvLNaloJhBZAOw/SsYKoV
	 o0gwCxCQsqLLKSt3pgphZPGzsgspRwYrcOhCwUhQ/LYnmKwvwmDp/qkAZaXtZwzwKs
	 5nEPPTbIDLX+JQeQSA0Z3TPnvzmZH5AKqx8B0v9N79cjPbr71crPP7r8ezWC1SzeER
	 Xs0pGlQE1HTJ1bPL9Lia0DgPbXpZekWHIJ7D3m04MpDXHPZS3ejpBg+Q9KMhikwka+
	 ESjRifFeKMpgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FBE6C433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166744025438.27673.654207232659356444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49159059bf67bc63e5764d31f4d517d4bb6f06d8804ec53c622279b82418eae8
Date: Thu, 03 Nov 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667440254
