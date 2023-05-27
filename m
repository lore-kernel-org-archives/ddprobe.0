Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607F32116
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 10:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1075EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 10:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685183286;
	bh=6eiWpHmuuV8q3mnZFi/LDNumjPyrdjCup9MP3rXds9Q=;
	h=To:Subject:From:Date:From;
	b=RIn0Lk3XiR/j0HM4iIBnHOK5WL0qIS33Hmv9kqvXcQzRgKSqYJHgqT0Jh8MliyKuX
	 9n3b3/qt+6Z8OsGC+0sBVnlGSxF9zZZItSPsOcEZPuKHYAojm2gCNFa2bwg1s8jOCV
	 uf+GHB+K4pxtERrqejjAqqyO+YVc6vFAH3GJQsZczNUPCw78On0EqEIxgJqc9Ml6fQ
	 PwGVFunVEBzb0natML3L0f4NlHp9BhXhF2zLXVjV75N4ZdSSoy4l2igxeD/ZWPRq8O
	 mxmj8DS9dARB+o4Px0P0HyPdj1+BLlW/HlTUZvgHaw0SGyMZBnNjR/4FbisIxhY0Ob
	 iTVuobpXK7/CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA1E8C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 10:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168518328586.425.12128729118311993991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a911e437e7b22f7b79ea7daa119ad094827bb450ddd9e6f96a0b20cee4de27f
Date: Sat, 27 May 2023 10:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685183285
