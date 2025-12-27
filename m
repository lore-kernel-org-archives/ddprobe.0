Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6FC314B7C
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766843634; cv=none; b=LxKOD9TAq9k9WQpVS2h6D8awwEW+mLQzlfusAk+dNix8seCCtmYmSvkfmj1NgsBvLN1ccdtOanaB+t2WEwP0ZXWubHh3+pDrflE21ZQHe+5Lc70cOxCQyQS5/WKw9GuDe0e/WmeY/mGYu6t5+OMFzo5nVFS1cvvBfUcgAfAKKNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766843634; c=relaxed/simple;
	bh=YY71N3EXi08DWVy92Qn2ce09PNvqp2oTioFOEQLJ1Hw=;
	h=To:Subject:From:Message-Id:Date; b=mX7BOuPUE4KeOQxmUDiiwtXc8bV8HzhsU9TVdVU4/aohyvOO7avodfiuboDo+A6f3h2E8BLwiyxQqXvkU4SMsQfPUQO/28j9y3G1vJGndKy1v/hdZcUVsATl2GDkwpC2NUi3zSu/lIiW29Y9UaHbyqn5Ik1k58DdJ4igKBrgNYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XV94aBYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XV94aBYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7B1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766843633;
	bh=YY71N3EXi08DWVy92Qn2ce09PNvqp2oTioFOEQLJ1Hw=;
	h=To:Subject:From:Date:From;
	b=XV94aBYVIpNcPNcOL1FAtZFhwpAu3iUUUESFgAC9Ld8/fLHb+HKPTzavFmrQBjslO
	 GCksMRHfeUqi9k2G+yNjwj+D8TadwyYC/ttkfmnVyHt6NJ+WZyceT1bUEyXuxtu3xT
	 JoBWAZUcaVcTVnWufVgbfEJftzXqzsx/2Ln1O+pc9vu0bZ2aYbH07YVcMPnJaaJ8nb
	 3a0v4yHKgEC2mllm3R5pAwp7jJkJ9ol2eEDwzLHcg+0jGxGuGdfaaqxCOrAj6v5MFi
	 sv/BZ9BIdSDbReieXlAyyQvZyS/4BumO5ZDcM0NpekU+r1cBMhC/e7gIyWkCRSwOvj
	 epz76iw0+gz/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99724E8FDD8
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684363359.8002.14389502102060227339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7939ad1140acb9738a8cb30dbec3334e60658b54a52034f9b2b575b520e4f8
Date: Sat, 27 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766843633
