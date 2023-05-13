Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BBD10FC
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 13:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F30C6C433D2
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 13:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683983286;
	bh=9j/9tLGl3uiHU4w4jB4sCcBqmm4jWxHtxkytcs7+xKY=;
	h=To:Subject:From:Date:From;
	b=i7+eMNnYvdqYJSUcX8IwPq2qDAOLHu9da9AlwXYYj9EU65Av7Qlljil7zAEbqWMps
	 B3EUuBLeqz4Adjpo5YAtVPNb1hX7peW1ispQXfPmGNMzfYGNYTVLmQ8sP9tTwnZta8
	 WoyiZjObQDd9r4Udo/FxmZuuOUaLb7hejt9LLGYmvfyVVw1zAhaDWeAFrKrT54yo5f
	 pe7pyXOT1wlrx4N8Bqi8yjU0pCR+EkcGFQ6Al5zDqnlf81Oyji6bb4SxyTNfluQljV
	 qyEGb3Hzf6X2pYESF2tsVrjpQENv59ulfOmeguhJtZ4r8xHb1Mb7vsRy+ZvHHgPK6/
	 gIo3tpZMXyVoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3DE9C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 13:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168398328584.5192.2415530714893556093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53288c08d9cdb62116c3b564b2e38a0727ed097bdc2c8e2c9e9f54a9805a7289
Date: Sat, 13 May 2023 13:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683983285
