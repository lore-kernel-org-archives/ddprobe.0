Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F72BE71
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 09:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D95C433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 09:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687167068;
	bh=M4+OmSyvShhfltiXSpPN9fs5UzH4N/Af+TeP7uDfFHc=;
	h=To:Subject:From:Date:From;
	b=Q6QKXpOFTiiC/QX8U0gq3qyKV5G6VTpRm0+HtJp03gN1Netp7D3YSnyl2D1cQk1GE
	 vTknDy/6tMRvX1NvSApFy26HDw6mCk2wid7XZA4k+gM+VRbAES6UrT97q8WAsLWmKH
	 Yc+qAHgg99ccGAHEUoL1PX2uhy3iYfd/d7HSbruPlVKNaKOBlXUuJnhq6HdF0lUQsV
	 JZiNT2V5RxZHmsfS9HkIs38bfse8CtPlrRex4CmlozGnzvT6lgPcs9cKW85yWo2uJZ
	 cp7M6cW7X4ibaLRUBXURggrrbmQX9Lf01mqLS4ryECUdUZfH0IkocoRB72k9o3zdEF
	 RZr2OR7Ur9Cmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B0CEB64DB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 09:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168716706866.16263.2993922029393152988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28f67b0cf786c91034c7e1e598192b759f1549ce1bd72c90c7e8601a9ba558f
Date: Mon, 19 Jun 2023 09:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687167068
