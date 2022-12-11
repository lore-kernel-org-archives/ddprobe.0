Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80BA2571
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 869D8C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670782887;
	bh=TzUM5vZP0Nqqz+MbKrN+t9EwQwe+E5+QOT/5ii6bG+w=;
	h=To:Subject:From:Date:From;
	b=ofIeyj33ndUZniJubEtGQu88ZkM0j8PSxHZzJyg5AKO6L7RQlzAXbwqA5UNoDlIo8
	 SUuDByzIcfCPsKmQXyYLYGJNRY+oizx+NgST/AJp3UzB4aI1AG2ACRrirztEN/ZypX
	 aFQCaPMYwQahORzbdxSJpNXjFA++09LDo5JH7oMefcEcsBYtxj2+zv9QMUCaqesj9f
	 jn38ma2RT0W8Y+vmunSFFvSf3DZPaCevKLE3kGmzQDDKZ2ouWW1q89RmyZmjUuBxn5
	 u4dCdZ8b1t27yNDbaOTvUCcd4Ty2GHufHUvkkdXEM/wEbWGeXEGcakfpRXB2E+2cd8
	 cGiwKxHKs8hQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BF4C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167078288739.12947.8588813769151924487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d2ca74e337c166c9b98b7e7f60f2ff33f13c1bf2e24a8f1678167ba2362aaba
Date: Sun, 11 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670782887
