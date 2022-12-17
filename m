Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D959AA5D
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A8ADC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671295287;
	bh=baFAG3xnF0noCs0CPmOyP9qnaJ/BqswNBfxm7gZWKQM=;
	h=To:Subject:From:Date:From;
	b=eXMhRUNkKPCvBKFpMPTT2+ln7F5Giz2l1qDMqshyCJ4pvOvbztbK54Yl2WxsgURo9
	 P7O+zyi8xgpWg9+5zdCVrT79E6M9BerB2/lBGG2xeupk74TEP64bXaDHz8vUt9AppH
	 wYz1Lejqkhsp0WV+JFgBc0twr5yPKZN6zil6deKe+SS2P5JpEluBjYegPeNvJDvkr2
	 viqZKz1bZLo4chJyVuWwdTdc87QyskvjmpVpqSVkcw9DwZ4LZ+Czw0lOQABBkctr8z
	 MdNI8DVNuR6AFMtl7b4fJ07vBYwl84DBmbaNfsgT7DpNbbgfWQnhOijImIxe3xjmBI
	 2bFgCw9g7um8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DF84C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167129528743.9405.7115848724492774442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2a42c57e9dbe7837b6cc5c0ad9ede2c590da1f986389c611b5e7b18f23b357
Date: Sat, 17 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671295287
