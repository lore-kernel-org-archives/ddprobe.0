Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A69A2587
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E51C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671879087;
	bh=/VzcdYzNUD8OKCtQPd5u5ffkr4yAK/Qb9u2JE7wOECA=;
	h=To:Subject:From:Date:From;
	b=DQqeAiJzkmMlA7sb62OpXb2Y3dfeS3KywRO84KdX6YCDGyUlwGBDoD4xcSu5uG9xr
	 TCcLMXW/1bwVzmxXuV+7MkZM1mtU1Jtrj4izn9C+WAKo+L60iCkydy3NbILipBji3Z
	 WYbeC8KOxPQDjINJzOdSOKKXHASTFPy/Ma0Jsirwx7543VZROVbyWme+RwcT6aJrCp
	 8VQp7NfRfL5Esh56OXuN7RAo6wmRyLaq8osMpmMqXc40rt5jFJslwI9ZnSXiJGE0vT
	 NbhXRjVLrMdygVtVxwlVYFzTbGFCKfkWxqR+rofGkOZWX11EXH5kjc6wmFH9/G0qfp
	 NahZEkB5SOJCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A254C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187908752.21639.16169487563337319429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d899ce8e95f12360744f1be1fe90072fee20dc9a5061b0229c07e8f741d4470c
Date: Sat, 24 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671879087
