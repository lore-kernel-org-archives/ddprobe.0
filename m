Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5120215A8
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748830794; cv=none; b=sjsFOUQpY2VhbvzxFcsO60jPku4s41qfFhSzq0xAqsncVRwdc8UrEjBfmYVYV3lzzp2RZC9zTXt6mPBla5VQoXRSeb4xsJbm9b2fLQT8aP1yCt6axHsp9OOc9ASlQl5TwYkhFnx1evVJxBtwPfqn9/a6qBFQqdLVpKYy96sLgDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748830794; c=relaxed/simple;
	bh=tpQoMS0PthIc3FUHmdYUE7q8OqgiC5B6m/LzJPs+E4k=;
	h=To:Subject:From:Message-Id:Date; b=KMel+0bTYepov+XdYngeKR5fzx3JCYjJYuV2sTcuII/Y+V+WMgVO2cK90JzeHPbQ7MsQhm7Z03XX//rfOKd/AYHIRmlzN6Kd3pGzcQgaKc7t5eOBY1JBiHUmj35wAd8nKZQ7MwoM/Ai1jg29rmiU4noobSEXz14tkhfEl4AfhJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6HGzs/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6HGzs/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BE2C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748830793;
	bh=tpQoMS0PthIc3FUHmdYUE7q8OqgiC5B6m/LzJPs+E4k=;
	h=To:Subject:From:Date:From;
	b=d6HGzs/erpeEsxlGRTkc8ukHhD9Ue+fitEW9M7xoLdDW48VbIYBj5FV2pS8VJ/JVc
	 WY4dB8gnAPRY+xLNHv3oie2v+1/rcJK5/o/iO/L+BPLbtf69zj6/3MUJONh2aR5whL
	 VVFZ572DMPNXrp/+uqmEnPbDTNfN/eRHInQZamKEmX/ZlfHw9mRNhXHlzcPGjrtMBT
	 9hpix2TwMkPVwZ3mLan3dBnxrE1WVsoPUK2WRfJDDszM+CZ8tt5jCOcZAcdA77+now
	 vp8Tw98YcD4b4TIe+SyGsVhl86UkalSvE58o0wkdwtXp6ThNrAEDdt2chPLQTaPUl2
	 M0ALe59xbluCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9550DC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883079357.5476.9222409474642596817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7007002a5b23a1a3788e9d1215436c4e5505ed95d39ea237621db10ae27b701
Date: Mon, 02 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748830793
