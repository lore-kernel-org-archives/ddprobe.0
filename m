Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCF023C9
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721534754; cv=none; b=fvGbWxUdhtRnTMoL+oOFBRqeAft4deHl6lLdqtriuLBV69aSUasrnESAiyANIJAAmqcUeo+LpszmrAEUP2eEeMbMKlOC2Xsd52MWXDh5SQ9dSjDuMXQimLnr5fznkXq2KF7xmD0lHjnQqlYSJfuyv6eJccdwH+2kENY27KpWMF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721534754; c=relaxed/simple;
	bh=C6eJy7JaF5zboKhzpWQBLub15+AaOLiiaMnhThs9vQw=;
	h=To:Subject:From:Message-Id:Date; b=N4KwSXQGI+aLXcnRE92KaJDIOIXPUcrL/OCnB4eCVvWusromvdnSWrFBXX4/1s6lGcXF5Vj6Tn6jewxLjFk1DfgrHGlERYlM9pIIykszlbX9hkLxOzjPXoBkuXG4AvmGWWh7T1fED4k1G4XbTs9sJWrCCEcW1v1k3IzXk+V7MHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E70DvjDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E70DvjDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EFDC116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721534753;
	bh=C6eJy7JaF5zboKhzpWQBLub15+AaOLiiaMnhThs9vQw=;
	h=To:Subject:From:Date:From;
	b=E70DvjDfaqoOkAZByYmfnuk6jiglTdNr8MrskC0H3+Qw5hYAl6PX2js2z5w0HiLDq
	 QMb2N41emc5i7tK7IIOB/w5q4/8vrmhiwLYLINFiDQ4evWoZMpNmwwcAbijRNlBD69
	 kz/w1rlpJ4bLd0lSMeA7xfoNRHuxCqxByh241m6aRICmQO+aS3rIJ68NWsdeYk0k8P
	 KDAdd9QIFhNNG3LoAsR3B1PIPJ9RNSh4GwTcqzHkWy5Z6h+SJM01jkexV11ufDHy9b
	 /RhbYelxDyZ+yAqunzEgCr1DZIox0AYHCQUW6pMZ+DxmkNpwUnlb3q+7XfiYi60XI2
	 mRce+6Qfx1oqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C04AC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172153475360.28877.11268099495593097274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c56cd1347d7ea2432256fd0ca71fc4e6ce701c7a2ad0e90922ea9aa47c6630
Date: Sun, 21 Jul 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721534753
