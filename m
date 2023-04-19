Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7F1C977
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 19:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C3BC433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 19:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681931705;
	bh=3X+tCqtd1J4Q9teQTX4j8d/IZCMFzpU4pn/pcSeYXXQ=;
	h=To:Subject:From:Date:From;
	b=Jx7Vc4o6ueAnzoo8/yyv8nlRfNwswDgvft8ypAKzdW2vjJCeh2Xr8vXFThQ/AVVrA
	 eqAzLlJux8MyZAWGBo4RvaYLeQgDJjgdA0oTV5bqygK8hWSJ8yy74/PfgR+JmQI4zw
	 v4DJI0Abq7PY5UWV2JgX2b6KPiHyI9mXGF9Jk5cbFMtXkBbP0sUbmO6juur3mzXGn4
	 lRUyFJb2qNt+6jXaO6FXihhc8yS6yMhq0cWAjTfXMxOeBxVK/hEYRji5x0im0t2ouL
	 pe3eZ5ffIhB1wLjhOf1ERnT5WJKQKAS1Wc1Om3Fd9rEEYgIcGUHZZx00Mmk/+Prxn0
	 1ol+Jh9RDBJXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C0EC6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 19:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168193170574.13172.17883436504300524299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b47f82ef1a55bc1d4fc56b1995d38b408561eccbfcd952aa7e3e203b933be52
Date: Wed, 19 Apr 2023 19:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681931705
