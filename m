Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CC5FC0A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763716914; cv=none; b=hVUPhhiqz5qkbSanwTgHUQfEGFEjaBlDndLI2TRlr8DqNdc8hZw5zY4mPS+7DaWwDksofhKLh0a5m2lEnv3+ASBl5el/FpYSOWNB8wZOqDPV0a6dYrKkZAmntJGEtvg3xxmSgWqDp5qlSiTnlUT7yebiIkN3zcINq7/r8Q833wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763716914; c=relaxed/simple;
	bh=527XMVWUD4QldZG1AClHGfIlDYvfuJNiXHY6VlAH0kc=;
	h=To:Subject:From:Message-Id:Date; b=sSfEdsSKCeQzFmv7J99X1sGwjLb4r1BQOh3EZAuJHw/oouVxKlmGXJjI3LRWj6FG56l2OXpTgd/q+OHSRVBJq3Y3B2wn7HeBc7zX3dzTEkcjfpDHw1oCkh/zzHcFTFbGCPx/eoIUwVbrCP+MAF36BxCAsg5DyzWTTpWMLc2fTuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=np2ssWDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="np2ssWDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1562C113D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763716913;
	bh=527XMVWUD4QldZG1AClHGfIlDYvfuJNiXHY6VlAH0kc=;
	h=To:Subject:From:Date:From;
	b=np2ssWDVWsFFg9swDUcI27R4FeodW58dG+5kvvL140dKwoeY2WV5lo1aHFpQTwDiO
	 QEfXOKOC8+TKr8pWwKgdg8gY6LzQ9U5GiD5Lb+Y8mltAIMV+Fsh86WIXx7gyQjBlqi
	 P15H9CtjmK/5SXoyuFHvre/Dy5u0ipXmuyrAvSnOUedQFuV/pUiicDlOY/KDgf4smo
	 xib/KGCJMRkRFhEwbJJWYOAyg2/6e+2d5bcQe5GmclOyNGUXTSXsX7qWuMngsKuv01
	 nRF1rPulc0YQ2b+2yn/WJpdxqkeVM+V/uz/NVnhv7sDLDZlQuk7/HBiyOwl2dUCEs0
	 xSO50rQ3Y0rJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A58CFA757
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 09:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371691358.3145.2059039913722687926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa70b05ac6dc432484af76421096643917793638c2724b6463bb12f56a1a050b
Date: Fri, 21 Nov 2025 09:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763716913
