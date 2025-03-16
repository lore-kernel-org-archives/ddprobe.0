Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577295228
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742110794; cv=none; b=qv/KrMkFrXyz9j0ozCc5jZipB5J1WzTALycCVmqWNKwN1nXEv7mcGYKTnP9p/v+IrhcjUn4WqrYQoZwCM4dX2sD5tvGl8yOF/FgRz7sFjvki1woQAXcVD53mvkRgAQby6kxk/qTkWhovSGppYHcmoKKmMwAyYhBKbrYdfDwkA1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742110794; c=relaxed/simple;
	bh=zfZSG5hEHlKosjqXGZXmKSoCmko76Zq+tmjt0Ql6Mj4=;
	h=To:Subject:From:Message-Id:Date; b=hBt1xXyu0WbNVmt1ts1Luh8xvavXRo6uQwB4NgPksHzEi4eu+NdcEM+UBIXA36LiQ8anOJNhIiAEVfGoXGWx3o7TcQSdzGo0j1MrM3J6IW/unb7jyRrcmngW4DMqAusUFve2mfbIUfl96O3i4Q5M648lKqHiqfFkgTe/L1QRnHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdQkY1Ow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdQkY1Ow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11D2C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742110793;
	bh=zfZSG5hEHlKosjqXGZXmKSoCmko76Zq+tmjt0Ql6Mj4=;
	h=To:Subject:From:Date:From;
	b=UdQkY1OwCaNFR0LOn193nJIamh9+YXFmCAHCxEger2AL3fct9R0KH/0VU4svxv1ak
	 miArenI9tlozC+9UUYcTDfXNxA5lMTIwJ6/D10Tcenq7r0UhIztEq3tF+Q0klrHgHz
	 Q6sI8kK340S1p1rTaXl+FnePc0qsFyViLhZSEnK96jphTF8srZRIkD9+YL9LYB21Lh
	 S9IkJphvua0w7EXWv13z+pQb2SoWQJE7BJ/SMF3gO6TjD6j1wXQ19YVJFAhidITrOk
	 KKn2/fbgeeO+7U1MY7f0oE8+KTOor/g2lTdTY79j5d0IcJpdZaos+yr/19P0Wu84ct
	 +eQMZ0AZzZGBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9675C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174211079366.28068.13217812431130751560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94f27d7c40f784035fcf7196fb14c1ce3d95212afad25e4a2cde23a81a24bb73
Date: Sun, 16 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742110793
