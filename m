Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D03D803
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63B1C433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688367968;
	bh=qZmgyjM+PvTvkJMxf8PRPR3chYvO+v1ku4qjSlCXjbA=;
	h=To:Subject:From:Date:From;
	b=X6LAMITSc5NTpoC8WbQvNqtLvrEnMJKxYu/RM0BephEaVVEyJH4aTm1kYnYUNMbGK
	 0kg4hhb9ARL0wlYzXjkAauIgwfDYJwvuzB72D3XceIUj+5Qo+hiObQoqZYaQ1hcVKH
	 pt03mDPiLPzcT0d/9hAOf1kb1Nm6eX7OknD8jEGizT3oRoxWa53VrfT7kI9o0qP8dG
	 PTkOV1wb2yo7OPGgPC7nRwtg92T5GD4wokw51MFjuB8lakT9cerr7G9M4ohkS5zT9C
	 va/4I0RgH9bFWI2C+vfe78Rp5z/PZD6RiMEEWqqvNdBGxSgEv7xU5Ie23z7wY+w2td
	 NgqjBLXPpurOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70B7EB64DD
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168836796866.32358.18219172879966663540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e5a345ca4349e5d98a52050b229c2d660ce2b854d8303eb6eda25ce0c4c637
Date: Mon, 03 Jul 2023 07:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688367968
