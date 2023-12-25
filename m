Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128E61DFDA
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmgyZICA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ED50C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703522896;
	bh=1CAV0j9GPFcW8qGTwFNPrxTW9nSH5OqN+Zn7XHgV4fs=;
	h=To:Subject:From:Date:From;
	b=qmgyZICA5RKgmi4yNqmjrGphHvnAD1ym3BAH9/mS2Rm6O/aFvvJpXVkEjq+uP+Emq
	 LiX8vyeMkD78V/0mlTn3xyH4oR3o5MCG3gyklLukpGAdfwC0bYoYPofQ87Grv7AP7t
	 4fMbVN3AcjHw250wK2OyTTdBAiPThkqu1ZzwnMes3+en0jP037UWeK6y7IxH/7wfEO
	 j04rSBXqfkU/roVyxLapO589172Eo7F3/cPsRYNun54z2dVAYvfeCElp6SRYSfxOED
	 Y6qBm23Wk/i5rzn2pKzrC/wOrt03Y7dpiAU5QvMR4Xexi1xqz9dheSLcFr/zElQ3bG
	 beeXoGQYjyMxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71181C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170352289641.30172.346852834422995275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d23dc41fea2c1541c71334735f95abae7b773352770a9a99bd77e379cb55146
Date: Mon, 25 Dec 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703522896
