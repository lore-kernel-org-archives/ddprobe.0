Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBFE6809
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F012C433B5
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666613453;
	bh=YdBe6u6zPnRzW6JLkf2Oni84ovrqgKGOloPkF2uxLYA=;
	h=To:Subject:From:Date:From;
	b=QnXnB2BWfX8Ssycb+UGH6ZvtpptOVR2HB3cAYrshJ2p+KUIDgV9H8uK8AW5dhb44q
	 x6p1Ck4WL4bSYjSjSgxzaDodCna042kd/rEclbZs1ki2mRPzv1WXjKS/9OTfM+nK8K
	 Airi9GfsoRtfutCDeomg90IYA8EYjriNJq3CYQAkBL70xO8vf+osXwkwdUbPypdp9D
	 Sp3U2fGTY7PsPB2PLx2JOkyHUgA60csoSPTJxBFmGTu0anrtCzD4kYmWSNl8B/i7lZ
	 xy3Ke/bmcZU8qOhcl9IiPXQYuVWrL4oaFMWsPEU30Pzjaed0LE0PzphatxvqVqnw6j
	 +WNXFsMyDJEJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55567C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166661345334.18846.16840587926558504305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2144b67b38765c2c80e9111f0d28bdcf899221a506f5dbc0e6b5a685bb0c9e25
Date: Mon, 24 Oct 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666613453
