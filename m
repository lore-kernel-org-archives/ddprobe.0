Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3074C1891A9
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734911754; cv=none; b=CZitLR79qAKt0iMrUSeoXdrvKOFSZQQ1NmMSb4tDDAtEDIySlyDvLAVOFy1kPO/hhRZxPQ2BIZ2H7jzXkkisX/L84G7gjqo3w7OtmgkvuCcWUol9VCWNoN5OlR2nLjSduN6u/7Wh/WNdH7xbv6F2uYHpl7PDKvZzb7D4whZlnJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734911754; c=relaxed/simple;
	bh=SYw4IvOrdpVraOML8W7kW8cYce7Ftn2CwxPxqRm8Fgg=;
	h=To:Subject:From:Message-Id:Date; b=UzFFW1l2PPqeldRID22QkgWsR7IPx60kztEHdNGhKNbSuti6NcTDA/v2ZccceFrV3669oDJqpZoS657WUL+0te+obncegT1BEkkkaitQ9WRSn7NiMyokFfLsCf5eGJYr6uHin6VzN4NgQqgfZa50+1I7yozxY7pmHYKwkVwD/bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/xUy6BW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/xUy6BW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB007C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734911753;
	bh=SYw4IvOrdpVraOML8W7kW8cYce7Ftn2CwxPxqRm8Fgg=;
	h=To:Subject:From:Date:From;
	b=n/xUy6BWCEPWKhT7e5XiDkxn/nM9RbYU/SLClZbPmhRSdSliN5lCFmGejTERUaJ/8
	 yPir5IWcK0aDX0wDUWNaa1vxOHwEr0DFF+Yo/gO+MEcmkhgTuP3SJTIcIogyDWkXsI
	 L8zRDTXjupNUjsmU96h4KAuQFNCigm3A9nRxtGJ5mY8221KIk8ELfhxc7PI8TbkzTK
	 /jeh4p5bJCHDrcEFqkjYeZHPjHWYVFEfmb2KSrISICEP1qOgJo0Ay5aPXOkKQIjrsY
	 FDLmA0FtSweHr7+ron6364ahIAHnM59YVuiOCsPKv+TGKbZUSek6G9lsNkgHEhbBTI
	 d+opSxh+qHkBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9674AE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173491175358.31469.7861600870674584590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4632be2a89bd620f372adb0d776d3cfba408dbabdda23b4aed198c893b4a264
Date: Sun, 22 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734911753
