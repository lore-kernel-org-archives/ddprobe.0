Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FDC39D6DE
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776332854; cv=none; b=DsN9bw6HiYcQEeq3AKZWGaWAmYYLZgFK/1ShLSyIAfYUE6OhbizAOkl+c08ifCDjPpx/J3HRi8rcvg2BFf6BqCw97ykzAJd3x2NjyIj8izGZVLjxClbJ1IgmXkQA5hA47Kg8+RbvqfGsoL/eIwvyV5myt8PMnT9tMnWcxtHK/Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776332854; c=relaxed/simple;
	bh=j8DQFQgSDxYXmJteJhY8PJrIlRDp/nUwN93Z//d/NFU=;
	h=To:Subject:From:Message-Id:Date; b=YRyo9XzW2Db6Vb6oWvCqpR994A1hj17uvtuHFKrwM8+PWbM+mfX2R4P5LVyu6dD320npe1h1jC93oFX8jHAmVey4xqfu2EiNVZIaUJ4h1F9vGey6Niuv1LiLHvZnUJEVVZwQ55cp75wlYp1NiSa6aEZxyZ0Nmxwn/2KyfUKwKF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcnZKlNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcnZKlNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18DDC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776332853;
	bh=j8DQFQgSDxYXmJteJhY8PJrIlRDp/nUwN93Z//d/NFU=;
	h=To:Subject:From:Date:From;
	b=bcnZKlNvM0Ocxo0pPkf0PILedGVKhn725HW0PMbwaEClz1ERSLtqMrABB48uLT/Gy
	 CYPEZi38vdJPokBceTxkhJ74Nc1Rg6oR9y4NsNx7vAbBfLiLdTUoIdrxkabYya7CZb
	 bnWiWBe7ALcL4RFYE2mspoVL88KKvr27iShOVVLLCaFyLij2JM6d5loaYitRKzNrSL
	 v5Y3agKZgi1JU7Jw3CDkw0XRXF50XbBCpUw89QhjRwDS3oam3mHsp2POTnCj1G96u4
	 UBKMvLGipNgWUqavqyKjEJmAAsuStAdTM+8U4aFSwpPoB0tLXQKPFlO48WJVYriv53
	 q16L7MCi1wpQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD34F8A152
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633285368.26578.17554828118959722332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0278b097b77474d57ec14b3b4dbdbfe48b128d2824f7214488d39237965b30f
Date: Thu, 16 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776332853
