Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28630253356
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747820394; cv=none; b=PFcD9TNb50h0gJQUDeisgPM107Ii1hA4lx1lNLbc7F6k9y2HGMJ4UWXI1n8aM2K8isQQZ+YgerqBqYDd75YlkQhEXNZ06WCfexv/tMLB3L/uiVBtADc8l3qpyxSmootTBCsUv/Sr5HK/1CGWE6Nx7viItz9DpHLXBAhFGb/6t80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747820394; c=relaxed/simple;
	bh=aEC0p7eZ3Q3HDMuPCcxa1ONWjWh9Uh7YWZp9uc3AgR8=;
	h=To:Subject:From:Message-Id:Date; b=Z4C1lwDgE/j8qDhaq1FHdUk4y8R55N98K6uUtHDEo84st9zpOpAIARpPdg8sQrT4EQ7mMkyQbKqxHb+Vpo1d7Fv4IVRtrRvKl/LMqc5n6YKJfhYwNMgvoj9W97LH+4vBW4UMhGhG10P6u2/OSSkKRTBzRs8RSeVGSwdFePfIGjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGfww5FB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGfww5FB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1815C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747820393;
	bh=aEC0p7eZ3Q3HDMuPCcxa1ONWjWh9Uh7YWZp9uc3AgR8=;
	h=To:Subject:From:Date:From;
	b=uGfww5FBbN503W1vjcVnDAAZru0fqPW95D9yTgATssw4XWHlNFUOX65Wnvg10KNTl
	 keypzZoD6TMyTsdp/efOlb6AS8alsAl2VV7cRboILiDWewmUPh9uYehHfi8XbDWWMd
	 AhUEgWUH/xciD/mZ6QHasX4qPa+nj/eCHxXAzRlLymUR0JuUwU8EumkeO4gZaKyyEB
	 l5CCxWKb5jGD6fBCVNq1pbrb/m38/W4ZNDU2O1ERvM/6gdBnE/hXa+5B/rTAFyMKOF
	 kiOCxYdsq1bg+tEnMztdwMplEhCNpNMwlgTVx9jzEi7IMY+M2aNo4wNHw/ZIp5O8Lh
	 uzmxG0+PZOBag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F827C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782039357.32086.6185178740191363450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddddb3095aefd559eb2e198e168c254226ba1d2c7e50a7add1273ce73c346a9d
Date: Wed, 21 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747820393
