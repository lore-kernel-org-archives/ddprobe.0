Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362AF330651
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775375734; cv=none; b=VyVsfg4oK0g6FwNcmQtJuTP0aTF5Dwzme5QXNNaNV+vAzMZiE8ewL2UlP+3vhcJ6dWve8N8GJJoCXSn7opzvszL1/Z4wLBtvhX5QzI3U9BprszlxIYW4+h+W+itIrQKUy1bu7ZEYjJOUBkvCXAdiloVGrIvCCrhsRrcXVH0eURo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775375734; c=relaxed/simple;
	bh=vV2xEE+bLO4JsxBzjhn8M8f6X2LVItLvh2+MdEfxJmw=;
	h=To:Subject:From:Message-Id:Date; b=M3G45h8EaMr7M+BfRJeirvRDpYTlYvWe+yX2GYZlLh0EuHDKTBUwJV+dO66vcA31YVn6gvySxu/nmTsd25ap2Urh6+JiYh7ZjfaO7z7/uEUKx+pnqeIndjTw7z0L2c1vzYKCK6ZAV/F0TwqMc5p1S2iSjcz7GtCZF0pGwHxjn6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5pjFOJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5pjFOJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23DFC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775375733;
	bh=vV2xEE+bLO4JsxBzjhn8M8f6X2LVItLvh2+MdEfxJmw=;
	h=To:Subject:From:Date:From;
	b=m5pjFOJL/WX5GBe6RQmq2xgfdVViPzQQBUc4r3k++waL+QPm7aJzrgUSLFqoud3cr
	 TiyZYHtt5PTWcIIr8eR2Q1YewGH4P6kyC3Y3qT7m4OGV3Ob1t71vXvHhIs9xtXSLXM
	 +ut1uFLOO/lzAW8Auk1nJBL1xHq+LDGjtZoMbopm/anMmIpjqQcAf+/j60RxJTAP0L
	 yeksKbNLOIe3is3eQwg1exmW6uaOQzCQfzlCfTTEYLrq7tl8w/BVtuB2kgSIKxfiZ5
	 0VZDYZYQzy889lhT80UTGTpg4vtgK2wjc8pxuQARIoD6WUhJCPm6QPHgtz9wYfEm74
	 B16U7yCwe+3NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01F9E64014
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537573369.9217.6805970409626121838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28010a06c368fcbd8968d467114cdaab38c1425258611a08a217b22cab097e30
Date: Sun, 05 Apr 2026 07:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775375733
