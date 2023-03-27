Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C4A377
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7CE1C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679899325;
	bh=ou6zxEZNNm28kGj11X7x2wJVQv1hb4HkRYtJT1tgEUo=;
	h=To:Subject:From:Date:From;
	b=gD+aDx7s2cZMCpOayY7sCj8dxr0iSRAeVtOS0lKjsHjafnn8zilIpxAAjB2w/z7xA
	 06dsHfVost4Xz8Z1j+04N5+ZpDK/0efaYxdNzfl/hhAqdtj0jImPUYHHjCp83SRSWC
	 XBGkTX6LgiQQpgDOroT8/ahkQsfxYc98nKEQHqHqj0xZzGLdjKxPoXgCdhbBmKuVXC
	 xasLj6EzacJiqxSNiZRmY89VElQ+ZPzZz7B1De8/iS1hyOk7YXXtF34F1IErE+jMqQ
	 ShVk20Vg7MchmJ8K8oR7PjHl5RN4JrA5XWtfCEBXkSmqSYJdD4zREOFpOKTgb+vBuZ
	 hoqtUjIrv1zuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C473BC77B61
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 06:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167989932579.13214.6115308235026523776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd643345f7b2212cbce0141736e518b75bf653c7bcbda62b00488b957fe51d8
Date: Mon, 27 Mar 2023 06:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679899325
