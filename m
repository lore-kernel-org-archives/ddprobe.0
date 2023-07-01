Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947622F32
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 22:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CCF7C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 22:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688250849;
	bh=Bok+HY6MbeTWeKmnVAQAikSsyBQCHXSlMTj1t7m2v1k=;
	h=To:Subject:From:Date:From;
	b=K/pd7xqHmZxQRCyAOE8Fs6BdG4p7Ck/zHF/GDKuyOHSJWIEyWFpP1u+LV+Di+E7yM
	 kLHLpwDgllo3XSmOdzAnFNRz4H9EgsHc5ejoKNrYpyLyiU+ewkFwDAusRNa7wgKelu
	 QPCBzVc27b/B358M8GSHFp2HqrZ4iUwBOCV7xkBmpg9A9cXtPfzJgdGJYxwDbsMD2Z
	 79FmwG/IW/BCE0ZC+7+t1LU/wFN+7lEoxIyqt54q0mVRoI9EfuelnuHxX8Ft1buts2
	 8C2iR9PtsTbdUClPSlP0nJKggjh0/OYLRI7fGX9V/PdjJKB7OBZ9F5GIMT1yaFR0jX
	 YnksmGZf+BfMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E487CEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 22:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168825084888.18427.8973820504290173875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 751a18e8d86fbe35bce719dcc12d6c4d79df302504c65780db96b0edb328d4bc
Date: Sat, 01 Jul 2023 22:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688250848
