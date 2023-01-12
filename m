Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A3C847C
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C100C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673552487;
	bh=WKf8TXavaOdHCQnB1Bvl2zfGezPpsOj4me8WnDRvlac=;
	h=To:Subject:From:Date:From;
	b=G/Ayt/gjN5cHvkYoD4afuuCjtEw4MtXaEQR+Xg9yBms6Zs9fQmuHb/OEc26hSd8f8
	 +QQHmp6l7EmHB/0vcNd9KdMz0VeQsiTGI11CfbXZ4nFsbcbWjsgwFwCsu1rYaewD9f
	 KJhVYOz2jAeZy12nVLs8gLfQujvasCQNAXo2K4B90RiUCnvgPRQ8hv/oYV8d4cInVI
	 VsihURWp+u77gDWPmYgN4kzhZ3pn7VhuLNu6vdiLu3lSELPghbBvPDiAkstP+uAxNn
	 cjlwvul58GJRfuYJYDomnpf6DBIJsoJ7bqv/JYmIUmDwmVWu34zLYf4x03a8ITK3NR
	 FCp2eFiUTBytQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E44C677F1
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167355248739.26054.3933535861463893676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e199991f429ea1f8c74f062d6722293a9910e7a123f0adee24b6bc65fa50e3
Date: Thu, 12 Jan 2023 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673552487
