Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4242737AA65
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788210034; cv=none; b=TSprWgoVP9wKAFiTDVVPrxt0z/WoSaVXi8sIuHLb+dA4K5WfOKwVkCBntLRJcvKwuhNEHrVepzHfMQbaUM+nEAimtinJZUsIbs4N9sHT8O6gXc4BDq2sJQ5Ue7OoCYBAzD4tN/nprjvQmQgMxdM90ICvP2R7MI/hVCIFJBVPtVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788210034; c=relaxed/simple;
	bh=DF2V7WYnDMnHbhqHDuKnICiBckn41k/WBhO7ZArORGM=;
	h=To:Subject:From:Message-Id:Date; b=UIRVzP6CK9OtDwztQJq26EubDAwVxnoLQU81e2pSTYyOQXPv6J43SigS/MI+ajUUwQkvbtLoYHGnOYHKZxl0Io+wgGZiRJvVQVlgfBnPBOiJxqpGZswmQ+/TNyJYigiAFzfLNdAV33gGuBbpXpA1hbVx4qzG1/pjA6l6814c7jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gj8uPBVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gj8uPBVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC5EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788210033;
	bh=DF2V7WYnDMnHbhqHDuKnICiBckn41k/WBhO7ZArORGM=;
	h=To:Subject:From:Date:From;
	b=gj8uPBVPKq/fhcbtaDY1w1DZ03hTlfmXThJl3nTw6/ZEOBvw1lTmR+0A5jTwgw02Z
	 nZZOlcCr5RvF9+Rl7+VAA2Xe9Q058lKBPo17QolUmpZhWmEQ9mk9rOc7iwGYM617GF
	 gL9V3zFNJkZf2H9+yfXEDNVsmLSN3SNK0ze1r/VU1gYcJQS7WGMReHDuS+8TgyPrWE
	 pxh6HOX8w6h+nEWo5YX1H74ifwgkcDsw43QcgzkxNdyR1u3bPLTOU4DbCCTAfkozdV
	 7hvfADQQQ0ydbmN/9wpgHiqtdD28qGNu2aR20HlzqbOnPxUIN/hX7VTbfvlOGCBzFf
	 vZF7IHcnH6EeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC48EC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821003369.4262.3152993415130709249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7510719fefd393d5755dfa00c18c15775461b9fff378c482b25ecdb8f1af982
Date: Mon, 31 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788210033
