Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A87DEEB5
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742782794; cv=none; b=acl287+edZ2geSnSPBBX6r+k7Ouj0m1VqoyGgcL7p0fZbKuQWzZji1T3XxpLuqhfTvJo4MVlCHGB5hPk7T8cJG1zD8DKKugctRk7XWmaO9iXkChJCJaLQR2Rlqg8iQAXRB8KYbR3jcrIZUok2olYnzzICiKylFt6BQ51HplFKcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742782794; c=relaxed/simple;
	bh=WLPjBT32rrm6h3oDcj/43vx6Nh3zNJ5IgzAhEKYYWnQ=;
	h=To:Subject:From:Message-Id:Date; b=oa4cGLoIcpHjewQR6PTdPTIqp6RISamDIK6JtVmOyTClFjT0TABWsdbUyFCmVVeXxtWJwuF4mfkpIzFzwcgO0QkfC0yE5VZmnIz91OfbIgFekNHjQ48f03R3HLXvr1IP9tExy9Ye5SEGA1d1lHzTgaDeNhQMNXojkK1/Jbb3I6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BB3gc+v0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BB3gc+v0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BA2C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742782793;
	bh=WLPjBT32rrm6h3oDcj/43vx6Nh3zNJ5IgzAhEKYYWnQ=;
	h=To:Subject:From:Date:From;
	b=BB3gc+v0ThQ+AUug/B3ytHWlct+zdx/3DikAKdKob7V7DR6A9ZbAIXCwxDbF36qA7
	 krV4LAhIQsPucYhTF6qW8gMQqVm7D47f7szHXXo1mqSzhQi8mDDQeMBvMSVGX4TwMM
	 lBg5ho6hekd1Erx9KKQhTEbgJzyUfkhlM/gtC2JM3SBKVz/pkEzlztOv5VOYT/fuvY
	 uB58XBCqm4xZvbd33z6KH4ZpqQvIq5YJrWaNs7AQOzI7gkOzf2JdO71PkittX/VTOv
	 qkAItKTUHK0/JkU+mUSNEEKN86JwAXwOJacRCScvMlWE9kFnFwQYJBQnJB96+Y7MyC
	 cmAC1E4cqc/0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC6FC28B30
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174278279361.31473.16211423285804047664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a389491b4eef026562147e38d36bd3ce37f806c69b714687fb57e8d4501200
Date: Mon, 24 Mar 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742782793
