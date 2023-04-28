Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8EC23D3
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 08:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB19AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 08:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682671325;
	bh=GmdqG29U2e1tNmAomQJzNCHvbt5EONIJyJSp/Ih2UF4=;
	h=To:Subject:From:Date:From;
	b=ektx0zs+Cvgk0aAxK4f1yZMlNAhI3Ht7jaFV/KB3AnvW2hg7RQ7iQ5SatTfdWXtt5
	 M3CJqixL2UC1zkJ7fDdtO9cBZ2rs4RnpDBu0St8FPeXMGUyNhtHRspFvlc00vwTRdV
	 9yaCrUQkqx51BUwza/94vSTFJybZhI9xZzB0ZO7uV8i9k5fYpovPS97t9gfbywqgef
	 ftgFfVoST7sZW/RLuW5dcqpTlyOOz5MAuyhbAL8A8XqQ7Nyfk7iD9BLiEH8R2Sv7le
	 Oz9GqGpdt6otD3gF0X4BUBQZLjgEj/UftJjNsvm/+cdVWBGxCgdBTaj60Rp07W0oSg
	 CCzapkncm43Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3ECC77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 08:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168267132575.4181.16341510018231832080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6843b36df8c3cababe81b4348f2570d19c4f964c4da3acfa46348af42323032
Date: Fri, 28 Apr 2023 08:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682671325
