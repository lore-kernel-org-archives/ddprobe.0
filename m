Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4C72591
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0O00d3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87CBCC433C7
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698609496;
	bh=f6H6cZQsBGeixJFZq4ykA+GeJ40/+RzUGtAmxQtuD78=;
	h=To:Subject:From:Date:From;
	b=S0O00d3YGnqqpRJsjvz/ebVXshOInTECmoYsh9EB5qJNUX5vjB4lCOdj3vn0UCFOJ
	 +2ErAL1EEtyiKBXJoj8gtzzxMRM2FPaz+jltY8o8SDuhkngJ3/LnkoFYpGLwRTo4Zq
	 Unabwq7yNQCizIoGX6VzFnDgLrxgzWxtWbVA65DGOTXD0R3Rw9jqNSOr8m+u242UpS
	 lc8mxOL+dp60VqXBNL/yxyZ0/of8oyzTwnNRc/58Y73613qW7h0q/KPUkecTNThOMm
	 JKxDSCw3wYrk7Yf6hn9aHvwJ9MweMBt7mNoof0ETBFZPxcXsUWZ5NKe77Qqp8F+xET
	 WuLKgP0XGl6Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668D6C4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169860949640.12417.7855671249205264334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c63d002fde357a2900cc4f6e5fd034159b3a1210917176f506abc2da2404b9
Date: Sun, 29 Oct 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698609496
