Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207751F7586
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754318394; cv=none; b=ZuMH3ZWJtBq+z3ws17eBTxS9//b+l2GdI1dJnIGCnzWN/9yZMkbM0kft5IhIv0+Dsmz74ggEygesxAcOL63M2n6g4/IyhbcHkFlCzYLVsjewVcKrTJVeytqlUP0YXQxZlRNVbC3zO6UvzCT1TXnny+e4g5mB51ovXJi5zA5TDoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754318394; c=relaxed/simple;
	bh=DUOIt2Aommx1B5P5kKCzdRGMtrSN+KJW/3qE4QXSDwQ=;
	h=To:Subject:From:Message-Id:Date; b=YfNPsRZ4FAmesInK4//5M9PbyDIGQM0iq6BdAOTss1sCEzu91kJuLYOgiFvvrduGwIsuwhahSg2p3KDBjMX4xTXArxL5277GVz9s9mHrQk1fXqUpfoWQL6vLakZ8M8ZCG6qUYozmwGXH0aZCPFwdDsmiN4JMJ/hJQnonS32ZPPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgPf6bk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgPf6bk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F15C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754318393;
	bh=DUOIt2Aommx1B5P5kKCzdRGMtrSN+KJW/3qE4QXSDwQ=;
	h=To:Subject:From:Date:From;
	b=fgPf6bk/qGQUPrq/sXUMOsxn7waeB6X2ALJntKugEoloDYmtCacq5+wVmJpjH8GJT
	 gSxpJuwfHUljhISSTuw4ozChGhRbGxFIzX+rcpsz78kq00cJ+8leQkO2V3XA4p+KVj
	 lE997UJsyiVIYdPzBNOmddnPst1v3DnNr6B7D2+B2RY+41n0nzD0FYUEmQP+xqyUhf
	 r9Fd0AXFYBbchMEzdYuMGy3JCbeqlr++B4G1bV1f5W9Kbe7pS+vkQHBfnEeefsHMIQ
	 crdimr1ujDKAP7HlRtIqGbrgmJwSwBCvBWHGJ+QMO07V9y4iuCy0hD/HaJScyxbxy/
	 UgiSq7Gp7r+wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91786C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431839358.8116.5282718236216756747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 535311b168efa4ed91f5b371b66248568221445e912ccaf3fb470202efd4c0e3
Date: Mon, 04 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754318393
