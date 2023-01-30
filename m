Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBA21378
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 07:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39C9C433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 07:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675065185;
	bh=lj+hv3sTtoSsMBQA7sd4f1t6PP2mVLR520Ei5VZDkA4=;
	h=To:Subject:From:Date:From;
	b=KdiI+sPqmOOGQeNSS5Rsog9ipVcbYm6W+M3ZUU+0/hEvqXqvh99/+EBa72O7PRBns
	 x9Yemz4LoTS5PCJEqK1TFWbfX2Y8IWU7B9qlyWj1CIOLK5q2KVNTMAVZIXZ6e1d7UJ
	 DQ9KkBfv23feJPTMtHXUsF1cffnSzT2vizMM8yOw52Jzzeao740tMBS5dPtBWuRfxZ
	 hnTWfyQ7bUvafQCBQLGIglLHipV9aVbFb2bDrYpzpe54Jfe3/9qa+kihtgiqm9GlXb
	 ippIYIznM95wrt4ZeFgKCA1i3OuemIFnYlq8sU5cl/uX5YIk+zuQRe21FfMv2OV2yU
	 mmGplv/cFe+fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B702AC54EAA
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 07:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167506518573.5191.3385019574799548008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0d6714601dcc4a1681c50689678d0f0ae18ba8ede55c8d5f635c07f8ad55b4
Date: Mon, 30 Jan 2023 07:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675065185
