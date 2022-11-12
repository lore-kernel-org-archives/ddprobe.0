Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C620C184E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBF6C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668267054;
	bh=UZd9McA2iWDw+FDsfR7s1HxsFcT7E7gEVFuSFKo1alQ=;
	h=To:Subject:From:Date:From;
	b=oyTSCWu70ojwWJR27nPX5b/MOK7ZPQdY5eJn5dOfjDE9WxwZ6VBXKeC473HKKnIJ7
	 qQFQK0RWu3pWrqzYX+tZ/y5VEv+6dpbBXyWOF62Fxc0J7no6i5eLDLt+iHjydUZNBf
	 RvQtN19y799+aQseBI8Kguk7aYj6tmSDCvIZrePH6hMDOaZf4R0WLaJNTSvo5OvPrt
	 J80xFQbIzboe3hBV1MBX5LEzhd123B/LCUHCYKGKWUzTSYcqBKzfFrf1ILvQijESiJ
	 UPqx1NuTp4noJztDhYzP/4RXVfAEjcNKlzUJYXFPsMhyVNQm0q+HwnyogCWXWRbHrT
	 PIq6IL7dyOYIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D36C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166826705432.29848.11275242366464355355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b279363de50255995803f2cfad9d57177045150a6fe50401f368e4c9d45b2fca
Date: Sat, 12 Nov 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668267054
