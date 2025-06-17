Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213972E8DF8
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750186794; cv=none; b=JK6RTiVuGzI+7/B32XbzKH6j9RgYGd+b0Vx0dDJBa9LqtvZ+RD9G+RMRcxe6lcOTGhD48suqg3izCkzRwj9GA2wSUD7elkddJgPhnznlxfxOxnGkjJcgiAEZ/k7dQjX8ESNVYnED1sslrSnivHM6hp6VWBELq7BuHLcTZDtfNsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750186794; c=relaxed/simple;
	bh=ImAgDYfsElFgr7D0tw9bf+96c7YsJJKCBvTUOQaGmOI=;
	h=To:Subject:From:Message-Id:Date; b=dvEiS5w8/TCSx6K3gk/SE3Ovj+2sIUsArWMZpBtB73HquelGoJ7n8J1OHBvtQKC+ged52IQjW+qOVfnYYA9kWEaVnAodWNjXsK0rCoxde2bq29rgXGLwAx0g4qmWp9nEOPXqX3z4acIZoRcHCnpe82/Y/Jee6Ev/hYZlDcHsRkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6G5s5fb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6G5s5fb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7B8C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750186793;
	bh=ImAgDYfsElFgr7D0tw9bf+96c7YsJJKCBvTUOQaGmOI=;
	h=To:Subject:From:Date:From;
	b=D6G5s5fbz0iV7dr+N7G1xh2KvmDTq2N9a/EynxI10wgnNBKrVgu9sSBpqxLwTkwBx
	 aLcwO93pWJqtkB+Q1+/0FJ8lyzQs7gYkuyFk17P726nCGXWqGkBWcnHdvJjP2uLwUz
	 rHtim0w8sk2tyWsZKqXaa6bUUO8Kn4HJUen05tuoP30jTtq8vyps0a49DQCVl7/Hl7
	 QG+FDRdwKQPK8bD8yIyKwMhL8rkWgLpp/REVp5/fujq37KbmCI3KRECzi+SO+NfIRk
	 SlCP5LXnCI+JJdh6ByZb7tukLo85NVPEK4hjM+t1GImgPYS5+uBPDd8aVFHUe2vFh/
	 BsGYw52Cq7wSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E514C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018679357.1359.305856516661895620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1a341693d341251894b1423a54d54d90b89d00a25be694037b705e8477768d
Date: Tue, 17 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750186793
