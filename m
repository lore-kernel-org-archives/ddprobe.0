Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375E21F03E8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742943594; cv=none; b=Xd9YCsfeuJ7U5bwVekJ6ZjHoENvKvxmVVrsmGq70KoLdgJcZvsM2AjKz0Ccl2BeCOJomdHhzWpQm9xZDZWvbSYHvpp4++4A3utPS080UO6HEoQ7PJPS1XMvZQvqWIK7BlxhiZBFuHHXzQov1IbJHwl/AyT48DLYB8t7Ti9TrAbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742943594; c=relaxed/simple;
	bh=AzuA/hIuG9R2h9vTGkSnRwPB2l+mNwS+HKh1FimEbDo=;
	h=To:Subject:From:Message-Id:Date; b=PZSYiqMPLib3w6qzPkbFYb9tjGAZu4gg0bMke7ILSsYR1YlrLkfG18u5ewd+cbHBBR5+VwY9sjDUFxB7daAjtLJTGztkIclgw3E22z0ZlvLub4R06YqoyqTn9EV2O1WW3vjwAMrvIkErkY33Z8bIkXUR63lIt3i8EXmNfyNnw4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/963Pq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/963Pq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B157CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742943593;
	bh=AzuA/hIuG9R2h9vTGkSnRwPB2l+mNwS+HKh1FimEbDo=;
	h=To:Subject:From:Date:From;
	b=I/963Pq5W4Ej6kGEVRIuHfe98D41F459C36F3XQ9LUQRUaqsCLfMpfawZZRnL4JaA
	 JKJEFcc7Ls8x1kUOP5dbaWkxtxws1r/jWZkcED1u6iIim/36bb8s4hA4Wo3nIrcAbH
	 lIflpstjI8qauyfPvlCDcs8ZDitO7tg6XQYRxENYB0wE5J4oYJgQZum5yLIycPtW8Y
	 kaGqqeZFgl7Phd/WO5a1YwJdl/Xev78UJ8oIdOKVKdoeQTmFWSiXd8Nxwqv0G2jbbl
	 /VZThDK2moHbQ1Oj621ovxKXSZ7/rqC/dRv6V/vEXTrTQhaIr90h3BZei1oCOClWhB
	 /nhNya5FrOZ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFB9C3600D
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174294359363.19071.6513510415517687774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680c2f1037d4c0bd70aa702cf57c6b2729df5296200cb5b279ce6d795b3bfbd2
Date: Tue, 25 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742943593
