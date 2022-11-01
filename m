Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB01E7B
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D000C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667334654;
	bh=8xX1ZXtq4wiJNfYrgm6VXvC+bjRaTSt6oTer+UHlFe4=;
	h=To:Subject:From:Date:From;
	b=JvX4K/Xr1wCzwtu28APDiRQCMyL7xUPSjYvpEe0L+GpehVYBAd5hcHuezuIS5A1PN
	 gpoYAz5Yjauzd6+vB01nQV8MfABd0z5W49JVKuYU+paYyt9081U+CaXGp+azSKAGbj
	 6ZqhCx/nUsXa1qdwWL9kcsQtVmVLR/jzbekp0C0sFhxPnnbQhytyyYsaXT98GZfAPE
	 9Qowlde90EGCZ2VPBI80zA+oB/4PLMzlrCc4houlO2vS9/6qaAIydj3FcsnJ7vaQQC
	 cKYE2FKDyF8fSz4+7mh1YIzGpYR7bOrng5yeMArmPDYhAQ6SRMU+8vdldGlLnAKr70
	 icVjnZpw8CV0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557E8C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166733465434.20020.1286564830172448371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15eb43ad7d58b3de9d6312917dd79db6c3d48db904571bf7dc7de586e89b1d02
Date: Tue, 01 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667334654
