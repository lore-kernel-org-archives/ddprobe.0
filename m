Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6E73195E8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768562034; cv=none; b=WssvhZowzmikiWxkBfB/AlU6e/Omf0V6LLjSfh+o+T9/Hmu++qpPXb1luFtNWF9/HudEOnKPLtmVF7/rQn40TGVAeLUcTaXEiyT97aABK50Fn2XDVveRq/JHkaxqJDLEqIRCJpys8iXslRa0vB/Hw8uvgpELSw15dl+2H6xXP2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768562034; c=relaxed/simple;
	bh=b6cqqRjPbMXnWkEdRBw71Upu+SxkpTcz65xRrYBBkFs=;
	h=To:Subject:From:Message-Id:Date; b=Hfr/9iuQByqJnyiSawksve5xFYEwEBL5nMeabwWGHOedgxH4PMXV1eEFW3hRIZ2fLtKKo+3KY143RXbO0NSyrqY/czxYR2kXwfMftrCk6oV+wt7SWmEA1/QjZ/IltBLiv5J7gpz4AZo/jU9NL9W7ACN4x4nP5vUOa1fWM9DqQZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUnSPsgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUnSPsgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2FBC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768562033;
	bh=b6cqqRjPbMXnWkEdRBw71Upu+SxkpTcz65xRrYBBkFs=;
	h=To:Subject:From:Date:From;
	b=MUnSPsgylXbTVonPBVI74hDf7rCD6UksYFTKcr2NkUZRDnjbsc4PTN0bjt/g5GD7P
	 LOkiKcfZr1xOSHB4uqB/FMNDkvI47wXkeA9sFFo6Kv4wqp06HzA2Dr+IXdb95SJDBx
	 Lzdzen1QApFAn/uAB525C9SeIXGLZgPd7Kd361a9Qgr0gx5XhUGc7+7SkYhOyn/ArY
	 tA0HoWU6YszYvWAIedkL9yFkbBFx9jgbVjVlv+Ys4ri8YMbxEms+6AU8lCZIS032fF
	 Ez7p/j5FoMhDvMcXoLvXonEhH20nep+YhcGiWnvMr2t/1mmY9v/1br7RBX/sL+tPwr
	 QSGVGe0v1eo5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CAAD47CD0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856203358.19755.3175992091546910004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5324210aafe33751713dc7ef279b785e0abde634b6fe2c4ceef3c6bd7e77da30
Date: Fri, 16 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768562033
