Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3607C
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 02:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3DA38C4339C
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 02:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685325666;
	bh=ePA9k0z3gvjEZBDS9hKg+YJYf1NvmLsaPU4PxH4HFGs=;
	h=To:Subject:From:Date:From;
	b=ol0Qu22BC1thZEZwL4dmuwLaLYnl3QtUpc+/y7KevL90Ubm/vcRJQ6Nege45YdGeb
	 eYpMNJmxxhovOBk2Dg5v8/sSjFuq5rOYdpaRuweWp7lYIranbbvdXCrxmSmGX+T+0E
	 pPSjmNZlVWAf2f9rNElP5sKPQzy6mF2oJr8CKQn7ymmAyOCCNwKOUNDG1/9idTdCC+
	 JcyuLSd60bpq+R5nU48NvthELUEr648qL2psOMoHVOAGgiqOW1cG3TV9TkPYLbi//I
	 ptBK5oW9tWVXFqNjLNqXKL5d7UeMWKi/QTsPV7fEi7OqwE46xbNB5GspPwIHzAOsDU
	 9aHFzavTACYgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B8A5C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 02:01:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168532566606.8416.13437695109758262891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d647414b254ccbcf9b64dbbc005c7b72b31746c44acc357b12777fe98a6fb204
Date: Mon, 29 May 2023 02:01:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685325666
