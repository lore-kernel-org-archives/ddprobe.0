Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BEB3D544
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771257894; cv=none; b=VJgjot7795JA7qzNhttg2d/ypRoZIi4LMYy1GIARMMChmEAN1S7yfVDAPMq95dZh5mIizYT1d3rcSlg2pLYTjVIHCBCKceEVawI1w09LhzalscCCPnMgnYCGS4iTuDi5NbQ3+eZ/RYMbSifv4n6joKZc0r8PQjvjSHo5JiwQFhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771257894; c=relaxed/simple;
	bh=+5IJVWzyrKDD5+wN/KP/58BRjY9rUR4EzH5/lzzlPn4=;
	h=To:Subject:From:Message-Id:Date; b=VkAOaI0xhKU7rRPfnGbL++1/0NZJzs6fza7rh5VTtDcFmRzwYFCYj0K48RE9MoLQmMvbmXhsSDeoBkbwYbKAFutjC0dqhn1Mi8DUG1V5DTDCWmjpc/deSBk+CaUNe4IeQgCTtog95SHtLWIKxD6/4/rBXCJG6A3qru0Cgq+r4C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHoSI0r8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHoSI0r8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0551C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771257893;
	bh=+5IJVWzyrKDD5+wN/KP/58BRjY9rUR4EzH5/lzzlPn4=;
	h=To:Subject:From:Date:From;
	b=BHoSI0r8p3z1EtPfOOGWvfSXW2t9VTuPXEB0yMKic1EHIY8+hSm2itoO813qK/uUh
	 ++VkdKxvha2UQ8b14yd1VJ/FuOXzJgt9vXfBLAJ1zP0tCyBL8NJPthSj42O5P6irnX
	 fVa6l3efFlAggPl8xa+nsYdgEUXF8uMayJdR3zmjr9mKJmqXm/1HzhZH1B8oSCBklD
	 NO8esGlt8YTKZ9gNQpWW2PdLFhsqUd32SmO+MG6wAfPGhomML0pWoeken5kTMGc/SG
	 xfF34lGEOlYVQ5h73jc8AqG4pOORMNBsMPZPNUbFv8TblhUHtocISBM+WSsu/DgwyB
	 /dW9vx/kTnXQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF1E81A3A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125789358.21693.1409713189723907604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f28751958ae565918d72ac03fb0be6136a834a800decd71350a7e300e26c58f
Date: Mon, 16 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771257893
