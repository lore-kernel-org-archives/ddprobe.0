Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28A415ADC
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVMw6a+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 890E8C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704221896;
	bh=Xq3LJ3NnlRjRifcJ5Z91pdnBWm7QB1VjXqyY0/VwmbA=;
	h=To:Subject:From:Date:From;
	b=GVMw6a+WlFxH17FYV+g9MrntZ7IIEEUbO03hDm/kL161tuCZIYhP03k35fgTpYfbm
	 9ERY1beika1gzNj6ETPUxZjqtwO3aVCynX7FeQn3OG5YswTE58gLHpVjM+jEoS2X1x
	 Bmmf1jkBpw6GOB1DFN2DU6XImeIrsiduINY714KY6VXimbebcQyLXapBTU5gEf4lIA
	 yrMqs3WUsvsTYF8ZA1x5yEKQmGI2jYH9KBWG9F7UIbT6Hu1m2a0USQ0M4Xjh0fKMLf
	 mTRPzSWau0MtqQULe1S3pzIKDvjJLteBQehIoshkd3jZht1Cz5f5OV/Uela3e3ysMT
	 Nhf5YJPN4we3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672B3C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170422189640.1444.17032635778800552587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 137127c240385f89f40bd44ad58efbabac47ac3ffd7449dc27a9a6ba52fd6f36
Date: Tue, 02 Jan 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704221896
