Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F531BDFD
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jeel+w1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A85C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702037896;
	bh=oeHMBQjnOx1nfnHke9oj3lCWAl2SIwmndSZrEN8mUc8=;
	h=To:Subject:From:Date:From;
	b=Jeel+w1vXx9CP2nOIgzrkc1U8rRbI7XlmSrKi9/pOb23UPVh+7j7/KcExwnqfNZ8Z
	 sIFNPFKuAk+N/5FZBkeLUgTWG+WqGh6rnl9PQ33t2rN2Z/YZ3PH9iw/Ky1R6JaRliO
	 BDI0EoOYQnVow12bfIhpt1c6UW4zc4OaZFiQrD5eLSQn5FguE3oKGl3sWFMCjgseVj
	 uIuxlRaG1KKqnUulZO0HtqxPg7KkCN3KCJ7RJzAA/Sc7dtQZqlhltDGGsUaq/zqMDM
	 81OfSkXm6dQTdUZMOUnTGyeUT1pefTCqqxAoBw3WNCtOq5QuC6SeQvnfKAB4q3XrRS
	 chmKiJWt5Ol3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4C2C4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170203789637.15041.12066025683444236884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d0be0f72dec8f465ab493b9c2bfb0b5f50ec228f16d65633332cdbd3a86ecfb
Date: Fri, 08 Dec 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702037896
