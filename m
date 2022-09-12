Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11F666E0
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B684C433D7
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663023653;
	bh=WpL+bKJoaO8WLmPfQSgRU/h89jxHu0R2osRss7yfa2c=;
	h=To:Subject:From:Date:From;
	b=Ve94sFoQ89+My2KO0eLGc91Gcjxtgk0TCAS7+MJgjWt0ZHiSGNvcegRJQZH57Juoi
	 wRecOy6LxF0PIntvsyNSzgI8Nx2EhAPkoejyKTXd3OYQf/Duem6TDvnGg606loLqO6
	 0VSZSiqr5CW1QSqzci4vCjwjJdFUggmPjPg3lMoMvDwVWsqF5EovLXc1s1IA1LJ3gm
	 VQJaM2SDc8N25rBJ9LyroMx7KCOT3DKWLFu9FB7W0mgamWwfnk4ewnd96SImBjswL1
	 rlGt+QZfLGdeIg9cR0rBQ0ghSa1i0pFIti+lwAaTtcrUQL87WxrKY9jJvOLTkbjFy0
	 k9q5gqLDaDakQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B87C6FA83
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166302365333.15275.11257993215122380925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ca4aaa48d4820a8e57b8b529f3a67d4f379057c212814f89a44b741cc73cf7
Date: Mon, 12 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663023653
