Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E382F49E9
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750268394; cv=none; b=rusWiqxvWHnpT6+rwNtM9qWE54dA1+hwOwuEPn2X0katVgSeQJYWQlSYvts25YTIShZKiwuZfN+HuU7djlV1UwPtdA5pGC9sWYEmlXHCt7fZxSHyEa9pwn3QCQ8K+ja2gV/ZUrbpbuw+U4ABNiXoQWpzZ4JVvwu9O9M8KOxx5Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750268394; c=relaxed/simple;
	bh=QQcmdSMy/sKwfTDY7mA6cb2AE6DZBxu+SGL+9HRbU9k=;
	h=To:Subject:From:Message-Id:Date; b=q+ELVQgXQ4ViLrJqj3fk3QlCkyXDvXqiU9V9IMBcAI6qtoFhNohBhLfM86rxjeGSBn1IlgSaEH1uUQ0wrE66UaD27OrbgbjKU/sl19OjP2uOAD+Mg9E23tsXHv3ILJqFm+KF3hQKx8ug4JcCACDT05IT6pa0GC1Xr/w72CiEQ8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMt0N+5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMt0N+5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A476DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750268393;
	bh=QQcmdSMy/sKwfTDY7mA6cb2AE6DZBxu+SGL+9HRbU9k=;
	h=To:Subject:From:Date:From;
	b=uMt0N+5DZUi4/jkUUlknVpxPPpXwkg+U/VebQfeMAY9BzkxCMioy42jfhYAi1hCnf
	 OaIbRQ29jIW6daO2bT3qd3t7h2y8qfrqPL5DIXYzNsvH33KUlREKNufU1aAhytP9lp
	 hSO0K+3COZoSibw5V/kOy39kSZA8n73YPvW5dVjzNNeuZ8z+iU3mtt2wdRLWLc4xG7
	 xrTL+THgs9Y+uQ5iYB8pZWHvbnDIC3gVBFBhYqTRGXoeNkPccr+RglOtUT58YRWYsk
	 2hsrFgbYu1gqUdl0V/DL5lVbLdLeDqpI5xpUmqwrcVsbZlkYffFkZYN5E9WDvP/MzI
	 yXqFRKKTw9ivQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F709C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026839357.25700.7956768304972075104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8bc696e2c08e135af4f992e25f9641121e803874dc93eec477941e6faff10bd
Date: Wed, 18 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750268393
