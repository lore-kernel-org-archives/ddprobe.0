Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A2F1B6527
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776644854; cv=none; b=QydJlJV1blVDoob3T1TIdP+KhLoh8ZUaCDvSAygccQAtXwJCi5V6Ms01LpIcrHUP9iZq3tLK1oAFgx8zZQ2pDcqF7NO0+ymMrFOX0/3Ta1l4VvJVd8PztxmAN5vwntXpiGwA4XH3Bq62cdpMnqNVVVp7dzDZQn/HM2w9JGZbDDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776644854; c=relaxed/simple;
	bh=pT3WaBDIDFwd7k+MGPfx+84liXbgz4Gw69A2fEfnyJo=;
	h=To:Subject:From:Message-Id:Date; b=R98ShYwam0LNNJgXwWPvk0N72/DyJ/X5/rm2sSOS2Qu97MIcL/CpXH22w5NnIgf2SaxBxvSWoRTiIRvXSVLksMzQD8e3BY8W+iqDe0sIt77AMZjzQep1a5JMbhVBHTJjIbzIDZ7Eb/70j9EcuL7OLQbMpH0Fa3tyJrWojOSljc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJDhbD1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJDhbD1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE275C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776644853;
	bh=pT3WaBDIDFwd7k+MGPfx+84liXbgz4Gw69A2fEfnyJo=;
	h=To:Subject:From:Date:From;
	b=rJDhbD1s75o7nZmMa6/DLmJvVcvulKX1u8d9QV0lzZ/2xNwK75N3RAJKrGmD2hteV
	 9RQ0wnsBO+WzRP8cbSdeDD1eX9AYqo98JCRNrN+rVe7aQwCGnPyQUthSQuW2Ztffd9
	 n1wm+C1CXgJg/iIMdoUQpTlDyGFxrx9at5erNWuMU5M10dd75RCipvU3LriFgFbykW
	 KmvmjeP1nMwsYl6E8Nv6Kev4dD313l15otT5cWFMByE8M2kRRtFgrxJHrhJRcuFt02
	 hKDe9I0cF16ZELi/Q9t2TDGGeg7RKAWX8RSWGY2jnhms/85aN7YFGjYK/HefG9Bomo
	 zM8JP9pvUtrWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD93FEA71B1
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664485368.20162.1953784491852640688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e714462d92ca6575bdd8543895a1d694712500e2a8563a7e418999558eafd97d
Date: Mon, 20 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776644853
