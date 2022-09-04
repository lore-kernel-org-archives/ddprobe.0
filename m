Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8CC7185D
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF37C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662266453;
	bh=Oa/V3ScTLSnBpmdXf2lkabVwusujGFFdCwfLYQ1FYCU=;
	h=To:Subject:From:Date:From;
	b=qf/bWEgfDtnYjdH9wl38j1OhyOSNL32b4S2agDMid32VoippLLhpglLk1OcVaVAzj
	 g70Ht5PZ4Y+1sou0erOFYx+tptqgHWWPiWkDQlxvf2nCO5LgvItgbvZ1jlr+yVBpnv
	 p7642A1nsQb1+pKtUcQlTAEHBfIh/afcTzZh/kKIPxhdZ0OA13t5lLkFExkHhSg7ov
	 7ruR9VlXRgAIFb4m/yKF2uCcPYF+uMzQu304SHHITMHJ++zcHghbLF6XZ7BnbyVO4l
	 dzUQ2cF/pJDcNHqWZykd79PD07N9COQGBuiffzIX5MKAdIcRxOIsz7jF6k6P5YzAeL
	 o57q35kA1RMhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522CAECAAD5
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166226645332.6400.17875703243004113772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b25847929915cd708a62232baa6d6bc588ea46cc033a1cbb10f3534ebea1eed5
Date: Sun, 04 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662266453
