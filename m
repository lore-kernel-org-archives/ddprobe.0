Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E0F1A713
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYek03lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88FC3C433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698700096;
	bh=hSiivMVo+Mp0ynlBv0EyrVF4L/qQ0Vpq7coqaL2BlgU=;
	h=To:Subject:From:Date:From;
	b=kYek03lwjLlQWz59gokYIbwACtbcNo75l3UC6L/LBS9v7sPYa6APVhVcF4Kb4d+fT
	 BbliJymM3TwHfgUxz3rbeG3djwe1BcmbghkT4cHa0aFj8pHv7aC3UnlC782sQBuQPB
	 AgP88E6NN08NHDomdNM9nKhTXKT0WXpP3fm+QOpI/tvzkOvZK3X5DVZj1R45sLntHQ
	 tq1fQP6g2AoQdN3RZOGmP7UgjlQM2t5uVH8FtbsxJvHwwQrbJcskWu66NLsITHxB6J
	 PNxrfOBktM3ckaOiC5fI/g+U9gekAkuPjkXKOtTja/W6f0wNTEsTFtJZGvYwg/3qWP
	 bODyFbgcy9f+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD52C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169870009642.29157.10387953220178604912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abcab33967ba9388890e629365bb2e014dd6bb6aeb2188cee9f0e37288e2c19
Date: Mon, 30 Oct 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698700096
