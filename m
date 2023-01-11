Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A1F17D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E2F6C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673447487;
	bh=rUf+Gtk02MliRgi/3Jx0uJA8yk2INsERQdb6zGVJ/Uw=;
	h=To:Subject:From:Date:From;
	b=CCU6mT132KwtpFpa0RmxOshpeAZXbG/3BpRmSknBnTFdOv+IEgbmFwq0d9Jz+PI3z
	 luT8UcOkVoHaMOkIvMvbVbeKJ3/aY9xctqQywt339O7cmKWiiqhJFGPB/Q4FUu9N0T
	 jx+p68g73VEBrGyu5DCZzZ1bsCeMAlX8Xh8INNM9IySy/vBi84NNHqlqb9Aqy4EYxZ
	 zXesIHr6wmuAMCblhzI9sXcRJVfMBzGeHnzb1DHz12/ddqWWXipbTp1GTMW7mYKTP5
	 glsOKmwDsNu6GfIWUGRR74MvNGC0cb0J75zH86f5CYXJPxkXeBC9v5MUywAMO3lh2K
	 UsFQ2tUC/bmfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6136DC54EBC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167344748739.9418.5612712817943951957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a453d241694bdb2caeeb245add4fa01184eaa94a9d2a61b0fbccdb455eb32f
Date: Wed, 11 Jan 2023 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673447487
