Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB73615CE
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C473C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670210454;
	bh=rshdcMCj4RT7SuGVj1reykCSdMC0rQtl67ohvy865ZI=;
	h=To:Subject:From:Date:From;
	b=iOudX61X5mTcBVepx0/S0zr3j6Q3e5wuSDnZYonuqP//R8R4BGjDgfkO6lbLo54eS
	 LS8z3PZKBKkBBnRKjwRAhjkJkt+8XzEYTut8KY6VGgEI7+3hn1VUukIbFbPs3o6Is3
	 LRgVXoJyRDEFeB/AhG0GY/zZJq1bU2Dda887262Ptv3Qa4EL6erxGXZl+NFhFJLQJY
	 Ur3FHN48EjqPTRxvFkOS8GwO3rMpuqPKVQMLFvWwAWISY6rUHYcWLOzyiPcL/Tg8Wl
	 N7vq6Yug+uDIR8S/QANA6wx9zEF6/D/aJgHrh+zVHOcPycAQ/zu0nqwM+QFI3nvcYy
	 UXZyGqfQ5kiYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A904C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167021045436.3480.16762195283985766101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fddc5a023e11cf150ced57fb5cd4bd9af22a2688e95884e7d2950b84612f98e9
Date: Mon, 05 Dec 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670210454
