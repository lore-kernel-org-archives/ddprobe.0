Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A48028E9
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759703394; cv=none; b=iiwn6C+PiGQrvEgv162cukRL3IWBxA/VUOZeuBVsCzUidUKXlVhE/R2cw7GJJGg9AsWuhNzEELP2uff2FpSOwyBlCPbQpc4DBXFQ66BQcJ4TTJqwFwY6dVf6DvoZtxNViD0ZNomv5HBeIECEiNgKGUe4+zR0D14XIBgw+ElmqmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759703394; c=relaxed/simple;
	bh=0MHkCKV9IpvDC72cf2Ovq0IbBB+BF+zLRlZFOXALQqc=;
	h=To:Subject:From:Message-Id:Date; b=BUWqbbYX6b8FAIrqxWxlPGirqV1pxKRc0i654n/MV5+8gYZT9yDf33IrgjqwKCdAdJiSuJ8WyUUYjK1Fysl0fv7c1MusYBIG8i9Sb2wuj4ZepC8GitGoCI5vyachjAAcFzS7Fn8vr9Mcf8T/Nqbv9YtosDxdquhVbT15vkK0g8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPEYjpCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPEYjpCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90C7C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759703393;
	bh=0MHkCKV9IpvDC72cf2Ovq0IbBB+BF+zLRlZFOXALQqc=;
	h=To:Subject:From:Date:From;
	b=XPEYjpCKK0EnxOmIKn5Y9IEVBd6eMCnSRvijtkHCKmYkxk0OuH7WKsrqScfuVnrYf
	 Jn+zjEPwEJC95KlYFD9c6p7v4wN7VXKIM2TNMVB+/nSK1c1ey3AXtPGmPFCKmi49M0
	 LJjOYlpdWHRAEGJA18MyDD9Ob18dsnIkTXPqbT3euggda+BMCGFUs0t+1iMTKtWzOp
	 S5JsLmjsjOoLjMeIJteXRU4HBHxdgfC45VhKJnLyFltE97w5HMpF0UUw5iqCXVpHdd
	 0H5+KN0lvUej/7CA8RwYw7WsBAFHVtrrH4ZZhGT5ykRVxtTJVO/YOwxYvJzR2Y2h/F
	 13hVYEaQ0PO/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960F1CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970339360.25799.10687189551499744955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339cc011bdcdff574493e26f625ea61605f9e2ae23651ec4003580f00485b03f
Date: Sun, 05 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759703393
