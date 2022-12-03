Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B900079EB
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B3DC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670095254;
	bh=md+nSisPYYe+iaJFkMMg57qgxgoeXbLk/TS87u/7S9k=;
	h=To:Subject:From:Date:From;
	b=K+nW9qi6Vr03EW3kHEl4OLY2bKjrRX6zBkSx3wSXCt6pf/YJE6zP/f5eq/Rl/Cf71
	 XwTpXGks0Ikr9c77xSYg6ke7wZDHXEMBBxtUI7YxtoXVXc0lfdO7CXferR8ruhZvOP
	 qAT4K1Ryiu5c6TTbeJVnt1aKaYGkb//I9dRsWlqg5QrKSNpZ7pnJXUBOe77tYTPmLr
	 sWFAmHgoGCePgb+m/7NnJMU48KGuBsQJI5ZOWlgk7AW9+1wV/Q/rd66a/0f2cwfuG5
	 vkbt+44nGLftpS6YzhNwGNjZ3BKpsOM3+ujL3bBDDa+KZQBRIHfe7JSi2UYO3jMBvW
	 ps5o2UvBDIpEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F46C4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167009525433.17778.11704586221343904830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3f73009d053804b0e21dfd390379b61c431c79b090de6eff06ef4a71da35aa
Date: Sat, 03 Dec 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670095254
