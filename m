Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A542F33
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 08:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B51C433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 08:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691137388;
	bh=iBsYdq+xjdKbdc2Y1BQQ/6o+SftUP1sAxqHOTRVXy6k=;
	h=To:Subject:From:Date:From;
	b=vQrSf52FsfGbpvwbqXyQVHjqerSveU4b/cQ/SGkAzoL+a3PYFMzBM3aS0FL+sBWY/
	 IANsKzCCmbtG6iJv63GaFuNzxsWrqyxdU8LmHMpdzJdWAs0VwUekFiux1OyVg4m6db
	 sZODcaiQKYFx9p4dbOvULAh86E27A54nkXKmniJ5LbnzND12Sa5Ff7Atf2ObO9AXY+
	 hktaRWS/9sk0eU7Cx4Z+W6q2k7V5YCkQADvZY2KitUfpqJ8zlCQh+SkDCFl+vP/Wk+
	 Vnqi5ow6TzmGT2fT9jfPVxodu7qwxXoyGVaeT9krxkt0WkZEhFq1reKhyZb8583Tqw
	 ArKBw9hBYt+dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B851BC41513
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 08:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169113738874.19906.1841431455187106509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee08ea5650315785c8f093f7fd3428ea2d526b7a7f44f70decbf316001c0415
Date: Fri, 04 Aug 2023 08:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691137388
