Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8540223A8
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 04:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6982C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 04:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694408048;
	bh=yjJLKB2Br9SNydwqtwRiB0C8cI+Eu5j/Ajz3DzOjn0s=;
	h=To:Subject:From:Date:From;
	b=jMk4qtCub22kW/XUCTKxO5+6WAq5fGSq0XwxTbdZ2fQ2prIz0jJPTahzXwQY/cc9T
	 4vpxQ4TzefT/CYGBsjvWquJeyQxAXZ/yZZbCEyiVLbYGS0aoBMd4F3V7pVu7vHdnae
	 iGGGg0OWH4at1C+MKv07d7qX0UDcrea7Ak+rdLqY+iKwybcFJFu+7OOaVkYNBgulcF
	 qCopST6hPvskzRaxKGDXbU5qKdMGXrq6tIffc43fl0mt6B/5sCFEBGI/AzrdvKDXYe
	 KmUP9pv0cogYpfEU5jTsSAljUE2NhlEBNl6H6K7RyiH8Jus57kmEDzCzjJ8vJG/tft
	 bCoV/KJNawrNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B714BEE7FF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 04:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169440804872.10145.17533626630690500473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1801680fd4a6957c287a8944bb47deacd6e95db0f9db4b66ce03b44a3c74df3b
Date: Mon, 11 Sep 2023 04:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694408048
