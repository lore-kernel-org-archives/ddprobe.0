Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3911428EB
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+7KwDgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A72FC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703638096;
	bh=BllUKkgiKaHEDRhLFxnUpj4hTSADDZU1KPmdn1JPVbk=;
	h=To:Subject:From:Date:From;
	b=C+7KwDgAwd8drsWcTIAtlC+AOJDpF74CcAzIfd/ZVTq95U+fzMCrxOyiM/HDz9ydl
	 gOkfs0+IyeGMgfUqUtX9QNDE7fO6Hz+2lNJJXPb2sdAhmv/LA3TaIMQBiIJeJwoytz
	 dwKikjO18n85zxII7YqmiAGei01wGvaVz2+Rp6nVh6qJzKYuXUS6jEOqRbLeBtDFhl
	 0CWDAqJpmKm+0X0e9ve3uActqypNYtZ313culvnXCl/mM+K4P3zcZrfTRTTIcQsCpG
	 34vE6s1JKf/BVLs+dyW9foRprXK3mbek6nl09YXhwkG/3RKcULxaXddaKk0ysC05wQ
	 8T60ipngo0laQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AEB6C46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170363809640.28195.5215868818599320563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f885e29dc6474e62209972ec4bdc76b9624dd7922450ee2eb92e80fce8d395d
Date: Wed, 27 Dec 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703638096
