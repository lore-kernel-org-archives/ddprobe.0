Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4880B42048
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743239994; cv=none; b=Ni9IBfUpzn3x/WuYuoBq19Hn1ifGZsLvKjP8MSvUv3GaE9r0Ui0z8zfqw9SPzocL3Am2QzISvNdzsY8ScZyzngX6qouPNJjZZAKMgAm0Snqd3S0q9wvyOGcaMLQfhcyN1P7ArE4jsh6nInRZ8kRkqxM3RktWs/jPWnYWjEOQQfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743239994; c=relaxed/simple;
	bh=gyYaxP1LKqndDvDJkB1HBUYCa20IYmEuYa6Q9szQ4TY=;
	h=To:Subject:From:Message-Id:Date; b=Kq9vE6CjeIP4X2m2rcZeOKbJmiQfFrvPdhsZFAQ5cKmXj9B7R2YE9L9CWb9dUz2lzNE8wJwO7dOr73lL1hBdH1DQwbdrp6ATlSO9W5A9CQ3CpbND/gGxUu0p8IGViDac0nM3Y+Nsmz8sU6mmxmieNLnFlVHBqVr6F9+PN2zmFZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uamj53Pl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uamj53Pl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3740C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743239993;
	bh=gyYaxP1LKqndDvDJkB1HBUYCa20IYmEuYa6Q9szQ4TY=;
	h=To:Subject:From:Date:From;
	b=Uamj53PlNfgAaf8OHrdJtOtKTGfI1Mum5BBCz8lqRTFQO3LUf5t+pjRUvkUKLHKPt
	 x+ZGI2lolbm++PcX8DWQl+79Dfxo2pfsE6YOpFfM+Pxhp0qw/SOdp5hxL06ni9oS+e
	 lo6vh2LFyetUP2VMY0o6qRmX0/TcCR3ZrdphuZETtmcSJPtzAc+pRkkZ5v9PGX2QWT
	 xRDboWRUpCtkLNmhjnbWYSqS4CV2nYH5TNX61KIqFpRoW2Lev3rzCEd2zb57uPvu7T
	 DWEPxMlW825jLAxEM7AerhX2O8AXAR2+um43xB0/PFcql+DMq7I4c7YnM+iJqDgAP5
	 x3fgk5ES51c8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7F6C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323999362.6214.9130690683535321569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acadda94b49f1372ef4923af634ecd53718d26ecc15584b3af28d93407ba7b50
Date: Sat, 29 Mar 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743239993
