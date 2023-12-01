Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1355717C0
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG8xCPkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7725BC43395
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701468496;
	bh=bWl4fY+cLIwARKYboIFAIaXRf4zlqtm7uMxKJYcjy4U=;
	h=To:Subject:From:Date:From;
	b=uG8xCPkcrJFdyRf+Y+KFoXActx5h2QJb45nTKVhcmu3LKY/9D+2eCTIn21+drcvI0
	 R1wlin6k3zQG751bLZ5aW6SRsKYAFzVEpMs0tmhMyyZN+bsECuIaR6z9uFHqQbc3Ab
	 VOiP4lGLhbMkA/3kCW8dbHQeH4YV23ttqZqP8Wx/0suWZ8b+QXwqXE7r0H75/qbdnf
	 WM7jn5YGIQDZxINOYEzkJbQq5bCaAZovDQf9mnb41XP7PL7SoB2QFgLD05MV4zsIZE
	 cYApYxrnqXnIEGCncGOLKpXWtLIYWaS4UqUYAhPYyHV0Yate90lkF/YCDfQcEeos0A
	 RseFF9V4AnDOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61288C4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170146849638.11395.5972727418151205069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4efca11dd23b0526fc23a4bf76f3ae0be147560a14667247f60b205b4af6a6c5
Date: Fri, 01 Dec 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701468496
