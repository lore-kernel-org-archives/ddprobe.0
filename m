Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4849CA21
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713064763; cv=none; b=m1g0yIFM1HGUZFtFzuAWE/HCRRVNfAgpo2uiyr+Pdjd6p3Qeb/VpGQcWA+d0bRCJRgQe23xcbilWr7TtiJ35fMR1A9FyDOdePUBejklCKxJVgK3SRkChtkpPHzggM2ikuHC9HcmTz5Zgsa0azDNqvcsQOapvzf0+VJGO+3TP0Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713064763; c=relaxed/simple;
	bh=YYZh1M0mp1WZnWySZTRHjSAVyPhvgDD51aqFnitzzsQ=;
	h=To:Subject:From:Message-Id:Date; b=Z4TGwiTj13VkyWFZFrJe1bBkKkSZSUQDYQoSX/YQBPmgB+xuh6uJFZ7NffMieyB5t26FxE5btLu8ZoYOpIZ0zzyZVYGkDpjA8wTFccgFNZjf4LNCBjSEZ0Dh1r/MHfIuJMApqQBrudA7eZQHfaDpBHHgRsw8iwd5BB4vxXXwJ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oK4tv7Vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oK4tv7Vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9139C113CE
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713064762;
	bh=YYZh1M0mp1WZnWySZTRHjSAVyPhvgDD51aqFnitzzsQ=;
	h=To:Subject:From:Date:From;
	b=oK4tv7Vt/m8UkaE605JCaoHvV3lPfo+VmoKoeNTFfZItrQqSogIuK3LRBRfaxmBS9
	 svqMeGjMVdR/vIDods1O+dGrm1mAF9EogIH7bNfrCQFfqePf7MwmtE2DqikD0IbmLn
	 R4aAbrnHfdfaG6toFzWI5MX3hBp1v71CwX0wWLO3dCAAhv7P4P+T8fzE/1TWsBkSHI
	 47M3YJ0WKX/jbvkSEILhFDj1VUvzgcEeFkEw8LsjvP+a/2i9lh55gcg1OZph8r4DVw
	 c+XdOuPlk5Zi8K6L2W1FZusxQxHM3WsHtmP8GuTi+hsCPe5QjK82EsYVsHN6IEQPJA
	 qF1cUQj7D3QFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CA0C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171306476276.8534.1852043261662479628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12586a30e905889ff5e6cc07e234a02827310dda0ba008ce41de33c5c47aabd
Date: Sun, 14 Apr 2024 03:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713064762
