Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E12C3590C3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774340094; cv=none; b=pCJUVupBDT/BtRFrYnWviSoq1iGJv0iaH8s9YECQbMeG9nDSpg6x92P1064RbKr93+91TykUnsexqodkPCrN+zxAbH0xrXEnH0J1La/38WRl2IHfEVU4+LicP//ciDVdHofyAqWQTqvWJslO4huxU9GWXQUbdAbJWh8QHm01hFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774340094; c=relaxed/simple;
	bh=qBwkCLMHV5tynLtowEhfTbbgjVlgh4UHgKLzQotR1xI=;
	h=To:Subject:From:Message-Id:Date; b=KYapZTWwCQkCzl3fljsOVNgq9vywVR+1wVuP4GNPF7ZyJGUOIuCm0SP8u54lbiRdQuUe5YIKQvjvDaMsKd9HLrUJxkfsB/7N2kbCzMVnkjjWihAosSyZ5pw0WiQqvWDn/tOyqQy9UnwtMLBo/PVw7/b6RjlpSWu5ffqPup4jAn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHqNs5fF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHqNs5fF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A192DC2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774340093;
	bh=qBwkCLMHV5tynLtowEhfTbbgjVlgh4UHgKLzQotR1xI=;
	h=To:Subject:From:Date:From;
	b=JHqNs5fFyCqTAr9v6TqdbRLOaNTW9VvDtcpy3UhaY5n0Xu+jrgqyYL6TauqjTGKx1
	 tBAUr+m94EI/Bt2dkJt1Jvg4B1NEe2qfvSaobS9qu94Ny4RATmZMyts3GA35m2IMdx
	 Oa+Rjnd8vCdFJeztZRFiY30gR0U4of+XQOfkCoUDR/67l0PyGMfXVGVpfdKGDYES4O
	 t4fd0KwvBTvraZwdnMTrl51JECoUcpMpzNWauPzEhxJn5gDNf04CGYDN4hRNzqxvj0
	 oRJtsaQWQFDtMDLose+UEj0tP/oRhazSe3mbC+8zHvMIKqLRfS0uN0yreZ1Tt4zsjC
	 CRCKFu95OHggg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B9EF532EC
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434009358.21182.14216158096462066544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335914941ec15ce851ec91e95513d0332cc7ac45e30e67db96414ada2b013cd0
Date: Tue, 24 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774340093
