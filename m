Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9DCA1FAB
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C61C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665310253;
	bh=Kj9hkyGY5rAwCoObVuOaAT7166brFWfxh0howZ2cO+4=;
	h=To:Subject:From:Date:From;
	b=jRAOQvxK0fEWggUEIsXvacKsRxBZdwCawXKuQACSuoGltWo5C2eBI9MytDTnJDet/
	 bHgGLFSBLT1af9xpNjW6LXjZBPDmiqAE46kccGZQNpfqOlKBFF3BY4R+tRVk0MQJ9c
	 mQ2HluqBzFWAcNNsNqlnvKzZo5f+V07EBlOk16K3cSgKTL4BfIy6acoXCyQjybxt85
	 D0ftRioXuj0psJ5ymf4RXqW1pmaW3JrqiKnSKlIDl8egYUsjL2e9cr6YxTjE4Iw0py
	 eP3EqArnP5wKXb2SkToobck4eUlSxgCtsdTSpMXcTK2fc6E8iKtNMzKhCs3v3iTay5
	 K6xefx2j4McEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5927DC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166531025333.9368.727775122563055340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee69a55c3a1d81d33694089f03412073991bcec33ecc92583dce47925520f5b
Date: Sun, 09 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665310253
