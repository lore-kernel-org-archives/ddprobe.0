Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7317EF
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87F28C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668937854;
	bh=oI3qv4yyhJ8QbS8LyYIyCQQNQ3SfeRqPy+2lHAsq71I=;
	h=To:Subject:From:Date:From;
	b=tUk0bn/LDDKX3wEGmGhz3s8vJs2/sl+/ZrWRnozXcfH1ijs7cj548lGpdUdEAoZs1
	 17/K0mquMOlCAhagK98zdEKmKxI1lCHSH1I0GR+fsH/NK2V7EKvChBUNiGByAWEJHL
	 B3WlbzLNJY8Wc0akRzJVD3eZudYkbZgqYKC4LlpfN0OvZb9aw8VlBRZDtBnMmIkY/x
	 CUNPFNyQGP5N40q9sNsGuWb5aKxW5nPomUp/gUSnhQiM0TeF89DFUQjacJ3gVf+yvQ
	 QjWYJr0eJQozxtUUP1TwMRuqmi9vfW/aoKMlP4ssprzxGcXztsRtYNI27Mpu0evkK3
	 nnf0NSSqqLOrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AE4BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893785442.14854.17858496882846099551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17a41830e52e0ac0f5e9b3f7f96880801ac47afbd2158f2e0e55b3cd0f9f302
Date: Sun, 20 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668937854
