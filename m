Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC39361
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0C7C433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670388654;
	bh=QVA074xGZDnrICGO8VKRg8z62yjl7t5HGFbOrbDCc4k=;
	h=To:Subject:From:Date:From;
	b=nJCrxiY+zkQKSuxHb1Z6ML/kIzs5DPmuwQROiIZS3keB+2ZLworeOUjX0thwu5nzw
	 WMBb/SEkX7wgf8sZ5cjP6l9NodscnMZ/g4nZvGTWmE4fI07/BiuhjY0svz9CHh8JTs
	 3jeND5W9twqYgAT70/hQoPTnxwq7UGnUZi7EHHQjLJurQ28TqEmhfhFTJhF9v3bllC
	 7j2hS6rHed3r1xiPhlec5whtRMzQxU7aT2vbiYL+64QQ5tGsFPSa3uf/4WvL4nFg7/
	 jhte+Fbi+mTzuVYHpPodYvGVnD8IE75wOuJ4GpIZTghGIWoKkd80KV88ftMHmguMYi
	 OfxfmInHZipVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CEEC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167038865434.4578.303517321621996615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9959f7b67370539186aa5c21754bcd1c8d1b89a0d31a2673d32f930a14e06e37
Date: Wed, 07 Dec 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670388654
