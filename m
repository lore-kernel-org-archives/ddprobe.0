Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3B712E63
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720668443; cv=none; b=LILxdchx2z1l/e7PgqQqwjvXsKxNSBU40AmVW2JiY8KzgH3OLbxhWq6anCLnFNH51OydpVK4zJ1i5Oe29t3/4bZz7SSqjGLrJHar8RCGyCt6ah8K1bBkL+DffoRB2BWpCaAI4Z/hyrhVov2ga85sJmZjiC3NTuM45tHXhDn6LeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720668443; c=relaxed/simple;
	bh=erA4C+dFs1K5hF2OTQ5Jkmc7O7YUgNiMWIKprCojGls=;
	h=To:Subject:From:Message-Id:Date; b=gDOvuQ0DVnJIl1NakCH6mLB8W73XX/hZe9+TMR9sW81ayfxMj12XsQj8L65lNJIYWd9wLMGovz2sX8a/z+M/+ECkz9hlDM0ZVbOvShsLtnqdEZsGGpbxZAWV7CCZqeX3GsVVeoBRdFpxry9ywHN33mOriMMGLqKJm+58BCMBL90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otBHB/Wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otBHB/Wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E19F2C32781
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720668442;
	bh=erA4C+dFs1K5hF2OTQ5Jkmc7O7YUgNiMWIKprCojGls=;
	h=To:Subject:From:Date:From;
	b=otBHB/Wr6D4Q/Y80uK/cSn43Zq1WYH44nk+BM8uImLkwP1vGrbTB7i6mR6fRE3YKA
	 Nrg9jKA4KDrXaYJbdJ5pwpam86Pny0M2F/D6rZQ6MHrL8HrlImTr63l+iWu+u7663/
	 ZfPG6regnKr5TxHv5p04mtCfnPUNIRA56VsUkel+nF/cXHgmyXdEE6E+V5vi8dGxqT
	 Mi19vDwkI8CJzIvn3OuH2Am44X/iw9EvRlvG/bC0xj0WnJxT1LFwtYIVJCU08zjKqZ
	 MW3hRHlMdXvyXemCFEIeoW+zwprZIcYgU8tT0zKzcnx82ASB2iKMmsrbzzArFfXwk+
	 LO8a0Efh+EJ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C306AC3DA42
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172066844277.25388.9073119956973529997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 089d3892fc137c1d8b62fe6ee737e850922ad81caec702b98cf95c3acbc3cd93
Date: Thu, 11 Jul 2024 03:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720668442
