Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA0735972
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771737294; cv=none; b=WhPWQqGpsm3CcXDoXby2JQY3xHNwYOXBGASpHWoRgv1QhcLH+6kxp15pZPs5aZ/iK0paofKqJ/ah+LMyqjkjIojP14hSGINClIfOmls2OhA9K6Zshez9QBy4t3iEuCpNhDH/RSfpfD8l/6C1us0BylBnTF8E4jKdcIhW5DBjWtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771737294; c=relaxed/simple;
	bh=Ow9ojM3W+d4Lth0U2jIx6oxxLZOFwy1AKl2/xQmc+DI=;
	h=To:Subject:From:Message-Id:Date; b=NuwQEeYTNKHocttb8MesYXlGyc5DYsOXF5QP9Yoe+eSc1pUDxTY1xrYZqqqH9nbx04vGyoO87NfHIjpBF+sHzxxBONdfPsyASUHcyRUArUcwKDOmni2PPrRZJ2h8ppbmz7ooe9/IjMxFjmRCmJRqPpukK3pM7o5d1W7dY8NO828=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJ+c5S7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJ+c5S7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9980C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771737293;
	bh=Ow9ojM3W+d4Lth0U2jIx6oxxLZOFwy1AKl2/xQmc+DI=;
	h=To:Subject:From:Date:From;
	b=MJ+c5S7rhV4fIcy3v4AKxBPFyEiAEZwdizKLrswEJJk/fDal+iQDTU/ZelailNFmu
	 9gO+mmlv6rXNBLdS1Rj/LLnQUC0+wWtCrom7xkx1fbWD5okFqgxEalEYeK1hiVvZ7a
	 F8NQMrS/zeHXZrUzgGhqKm6Bto8nQyyxxsYSdUVDOLayq2yRZLB4eh6LXFAtO7/ftg
	 ZQHL2K2rRTc7xA6Vj7HeiEz75ZGZy2PCIlG70KhCKeRAlznxFbrjkDKLejUFKwabLV
	 9pilWUbc3tlZs/iiMpFZST0jW4jZCvP5rY9YDtEipY6e4OPjDNAd3EpE1c9AzO9lLs
	 52pmDoTgR5zAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96114E9A02C
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173729358.4845.12373400356930563041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec12a5233c73ae6a18f3f3884bca9118b4df4ef3137fe222f3acb5381e8ab66f
Date: Sun, 22 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771737293
