Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18567E
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A0A8C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664162453;
	bh=khiDnG2JbVCznP+lJNZs6G40CFU0vvmU8ncB2DG+m+c=;
	h=To:Subject:From:Date:From;
	b=Xq1pIGFgMasFZzY/vcz7TPVJMJndhp+GPHSQE44WVWbb6ZJ6wKfoPftkx4BmKiRdF
	 yFVDc/xbbXQU8ESX5zEL+CeQyPNwmmVGYijON6oFO1InBxwtH2MZmD7WVXteqKSJMM
	 TiQcY/SaupQ6ddZMprEYBExEaHtboqtzLhA44uL2NKJknvwX36IY4GpHpjdO2LmIYK
	 M+E48Yc3oGRfQ0BpGEGu21gnMO2Gp4x+CaOdPhrLlFClDRLXfg/RD2iVupf05JUtHW
	 jRJ08oJYHfwXU6rlXHgHlP0E3XBerSw1DlmJLwJFgl1w1g4kj7M0YsHPstp5POcgeQ
	 ilgk6vdpcstug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A19C04A95
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166416245332.24240.5825693398549878548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a905126bedcd9fe48acb73ffd15ece1ae6c85215159431251d7cd40b6169a955
Date: Mon, 26 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664162453
