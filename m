Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EEA12B63
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 08:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02A2C433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 08:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685436185;
	bh=98pCWEqBO5u5alzZJ1Z9xs6U8pwCsN+Ze9slIa9a5ZI=;
	h=To:Subject:From:Date:From;
	b=vPhGmWVx3ZwZ034n2rUnjKP5Zh5hqxFCRxd41L6kUHG9aPfukJfu0r+HxfLjcwnwL
	 Z+cl4eE8c6G7EUMDPbapwfqqjJyxwlOC2Pd9umtMaQ5aKCqVX7CyBwj/yj7Q4xkVNg
	 LL/BIpdi3jgfyqAoXHpwgZHxsI8bOdnL5cXc9NPHue3fQfWQS9ybY56bvr7Mt8tkTJ
	 sGJDLLTGBdTjmqWb/SQ9AxJWyD6j4azChotVYTcoj6f9or8P3r9TUaUA/Ex+zvij5+
	 Oguj7HLzTp+HniPMA5Iy544os+nA3fPR9L7PzKy3xZA3MUpoQEsH+6+BEdtMgNpXtY
	 wwYB4BoahsaHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B6CC77B73
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 08:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168543618578.1292.5984010004134633683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5437cd7b16070d91d4e4efc02edece138a7c642d629cba9d0514cef94663b1
Date: Tue, 30 May 2023 08:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685436185
