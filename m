Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73FC23AA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 841F2C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672604487;
	bh=n9EPNKcaBfXmYY4Dc4BzLQINV4eZKsm10TMs8W2vYVc=;
	h=To:Subject:From:Date:From;
	b=kdeVV8cyE+n4DgKi9nWW61rvN1rvbhcy6z6qSUzD5ymfg23H+ryub/2fz1zXV6v7G
	 +ZpIcoAafBL+Chftp282TwWCQ1e9KZ524cAMUEEF6G8uK/kS7M12MJPUZciMdZszUH
	 +iTW3fodjWz+M6ZpPSPUft96TK0k79egDOn7L9K/YsskFJNuYL2PPEIzgcVmCxYIjC
	 QmzZ5lE3XWoiaKdDXA/2V9cKRJKVLJnDuTsmfBl4AyR92PA7+AjlGcmUkIqS+02F2l
	 PORuWMmAoBmTRQvVLcUk3wuWNYSf4U+pz/ChyUa3HNaZR+vMsHONEflqf0cwKHUcYY
	 nPe7NqBUbEZxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B369C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167260448742.23229.22628980217617092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0a34280c8b60ee5323fd295a70c366c9e93b6792a13e039b2e1573c8b833d9
Date: Sun, 01 Jan 2023 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672604487
