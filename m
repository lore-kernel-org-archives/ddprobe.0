Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6025A19EEDB
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720738643; cv=none; b=F/AgrVRCuzktAGc3zw8H/vBCZanHgO13PHTxd4KiETUpWzd2PgbC42W932y2oSvMjX7gQUVdB/COyZkC3rDTtTpGhlKpaK4OiLYW5PvtG+8bj/ZzwcwsCByFIEgxf3mh9wJjc9YD+nklLcCZoFZ5qqI7XDtS6w6IzPFaf0wFT64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720738643; c=relaxed/simple;
	bh=/Xh1nvQGZnLtjNQ4F3VKRj0mZc6XraemGk0vj24QaHY=;
	h=To:Subject:From:Message-Id:Date; b=o7b9fecK4Z5Fm7JPHCSjYal08jU/3SwRbdrY2wS/ozHYiV+4tBZiGKXzCN1u7p7t/2ydR1tam2R74eyvDeipBgR6fyk7cyomFNH4pCb0ZBpJZspImWDh5iFBBpXBNY46F8b+gzB57vhs1QA9qgr5LGPfIHr0v/4IFyPq/XRtOK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoVXZnNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoVXZnNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA337C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720738643;
	bh=/Xh1nvQGZnLtjNQ4F3VKRj0mZc6XraemGk0vj24QaHY=;
	h=To:Subject:From:Date:From;
	b=SoVXZnNax3FjB1MQb43npVjhC9r6+BeHnzYxzjzdSYH5tZ3ujJYx4Bfg8YSnTD277
	 qWX5hmNc/o4q/5MEEPfVcSIQIJOWY6TtRnhiPOZ6rfyF9FYIk/I9hF/8oYOMqHK0A8
	 lznFTeHnDAhCB5T2SbIA5f8DhFDh2IrSLckbQdKUm+hGG+7mJ0w0nuvVMVX3HZgG7I
	 y1z9moZmXxuAInzARJVOkffwQloeLH/dY70ptN+M8VvoCwrjlvavWOr5jTtWsShAaU
	 IMqN1W+f3s+yaEvt6hgijJDhhC+YjE/Ho+5gDx7fJUiGsjl4x94m7bqVJ8JypbFWUu
	 f9ota8acKIaBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3B46C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 22:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073864285.21319.722419013438369602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713a0cc60714396492a9edd6eee6e354df7f189eb47d07489fc0d69c73166e8f
Date: Thu, 11 Jul 2024 22:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720738642
