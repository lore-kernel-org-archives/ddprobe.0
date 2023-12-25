Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C60139E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArSH4f1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89FF6C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703489896;
	bh=ioPywOzThufw3oUsTrEpKbg0i2RwJYTY7UDqTIIoYQE=;
	h=To:Subject:From:Date:From;
	b=ArSH4f1ltcBtDCl5vYeVWPa5LAi2jXSaHNwPrYrciVUYRafG417claAW6jlnyE+PU
	 ZS3Xtq2Wovc6dlgDORGpKl3fEIS5HhOBC64VjSrB+AhUcfBHcWdeH138eLAxjDQLHa
	 HcsklP5D943Br1h/HD2s+VVPQzsUaCkLwjFs7uS2kCnD1wxTKZNYleLBppqqtCxHjP
	 C4tu6yH1z+l4ZhBl4uhG0fPJBoTgJcbbanpWiK3aKCcjuyDj4nAEDhBEeb5qyj4dnn
	 NeTnIgmVlzomUBnK7sa0L51QxosWhl61J6pzm7ZzMf4oDie+rB0eQ2XD+zPpMRtRsD
	 t+vDsQcyydrMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66735C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170348989639.15343.4186758315382620245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522d65d31adb14e4ed4906f8c2fc1ece4e22b38dccf245fe10da3217f1c9b837
Date: Mon, 25 Dec 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703489896
