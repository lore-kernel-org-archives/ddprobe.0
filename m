Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E421105
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 884ABC433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673929887;
	bh=TMqmmObqGwTgCrSseG4BB1Fp0cNIFXzvtyqsepJ9vSY=;
	h=To:Subject:From:Date:From;
	b=DC7H/R1FNF0T5Pdnkj6WilSgKKVbgGzMJHeHFvEvRrfVnNNvU2GIwwCIDpMjSKvEs
	 HFZX5WkGn7WdXzwRxUuhGH25BdTw7i50HGuDaZ8iap7MMlnJT+l2MvTfsJxghIf+Ku
	 3OnHC0EqQgKsJMlF75GxoLzWwWIStVK3VDkqXVWYCcemcoxYa88pp53C+xYm9AXq7H
	 aFyJ22Q8rVdvzUnH+ZA6NURSFWGp4Csec4VuvVc5VSXKgjd5S0n+CHQ/7ANOIUHP3Q
	 JreQsd2GvcZX393wSHhh4DvC0mCR5wvKMbF8DKw9kaPOeTRjHhUf7DpzTq0qzqT1wV
	 psP3ZxXwP/2hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C1ACC6379F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167392988742.24142.12968527023045776282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308ebabf81b3f7d6bff3a182d4f646bb10a233799be0eefdd6b25fa1f319c28d
Date: Tue, 17 Jan 2023 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673929887
