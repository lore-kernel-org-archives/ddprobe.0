Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664BE8C17
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 21:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AABBC433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 21:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678743426;
	bh=oYGgLympKeA4JYG+O0Y65Ub5llSx7EOYlHJFGQ1PsSY=;
	h=To:Subject:From:Date:From;
	b=DtQ3RW2qSOQUr/llOSMAora0+Vo7A84KUQVgdkQ/wwyNCEcqJ9+8m8AHOvFDSrk4C
	 B0XPBitdpU42sfx/a9tAlf0PH4zY0be2xSL06YudVb5VChEvVBtxpl7/EtVG8Huhyv
	 88JWIpYgPb1+w2FaoS4uf4B8JeJ02qD3T/sNqiJ8FyDQUob9H2RQYv1/VfvKk1YyFA
	 b5+iXdenbTfCOioPjWtABhJoRmAa0NreRwXgkqWDfE7IvufcRifJaWI2u1IqaR+3DM
	 Rn05xx/7p4rnICR7fNN/vLuPIKapEHAY1rnJuFK6fv1vur0Wk7q7BKZwaMx1mWPAJ0
	 Q9mss5mkGr2Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D39BBC6FD19
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 21:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167874342585.8683.5711645158601766293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ebb53ff63dc6d802f113a3b51642aa5b6104d72c71a02aeba540decd174aea
Date: Mon, 13 Mar 2023 21:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678743425
