Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07DA7E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F860C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664250053;
	bh=Gwdw7WtI7TIhHnz+BDVJZqQa7BzWPdYJgRmshZuFY8s=;
	h=To:Subject:From:Date:From;
	b=dABUUcBxecS8LMnoXm1koXFMgSLiZBVFq03feT2MbX7uWNlQdw6ZVYnRPo5VabDhL
	 KH0OIS/pzxO8ZguXNvvVwjgv+6zFw7V4L1E6TZpfLvLviZRFlvoYkEnaC1ehuyieXY
	 /NGRKewdnijWP2oy43hWX5BvWiDHKNF47OSqHBjij19B/45Yo3+dLpmQHpKgf2UAAe
	 NOTMs80+ynI86gFQddDUEhGNW4jTNMypGKmyPA2ablkzYqUgLIxolduL+PBqu+ZQcn
	 yFvQA97CiYk/jCAbgpS9zzdJgahwp4BUmpaawumOqSAWwLhMPSnOv9Xl88AsV7rzgX
	 a66yiRqP2GoIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56EF8C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166425005333.18396.8455875069780880763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5714bc5692ec8ab6dc398d572f0144cf5a807086044a18f6a5f60212caa51844
Date: Tue, 27 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664250053
