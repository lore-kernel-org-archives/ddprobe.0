Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A0B2113
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71FBDC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669628454;
	bh=XQgyA/MKw6Sx+0aCUUEBWJId33z6lf8k3159RR9zL7Y=;
	h=To:Subject:From:Date:From;
	b=qZHAJ3vmNHlQrZjyMDIvzBoneNdN5mOOfzzAqJEjx9kwQ94FA2ph/zzJH3V1IPYOY
	 pqOlPM8oKPYytkKM3CLYUg+a/bKakh8fWYXDqwWNFlwSyLvXu7I9dW5ypimmOkvA0X
	 OTJ8SlIZiyCrB0tWLmQxQGgAqno1LqQkqr+V40UizJtLW4zGko+UODN0Np94F1dhOD
	 LC1QhX48CjecX3lHIXi+s6xKg98wKSMjJ4abSLL6ohEEjPG2i0jB5ZLl+eUagTpgpj
	 JGVAISqdmYzHUNzHK0oMwz6ar2LgCoczEh+79L4T96bZFEK9XE82bGfJjMYIfaQkD3
	 HWDcXpuI0XFjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57096C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166962845434.26300.3990249505402306280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033da984e8c4fa2218420f24a594c82b33169c1baa85704bd1790509dc871190
Date: Mon, 28 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669628454
