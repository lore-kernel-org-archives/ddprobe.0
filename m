Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627BD23C8D8
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738955754; cv=none; b=jN3Hoa2FYtxDbijAp87QOltKIphq6OG3dFfxWI1QMPYESyFHaXxDvYotkf4jD5xvtpyf/f12hjnwp6CF28z+enEaTGRZ3OwdlPE7J2Ar31J7cTKOOZzu5Y1KQ1JJQI3KujW+JOSXaWx8+JBhlr0LpM6dXUt1nrEPC8xED5Ba+/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738955754; c=relaxed/simple;
	bh=Qm44zSw9RC71FPXL1cmrEn3ZTauwmJtNY2Iqs6AXZ7I=;
	h=To:Subject:From:Message-Id:Date; b=U3Yc+GqROnYSNqmlsxbgFayYpl+s5/4QKsE3NU+TtHvoTeM1MwE2iCOvEei7NmxajeMVZ3ZaSD+K0SI4CHesRnzJroLMnyjT78Zaop6w0rUX2nBzb49PkMIdUC3U4UdyjKoq3xN4w726e08iNoW5zCEz9FjmbxDDxTx0IvBwD3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNIiTE/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNIiTE/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7F8C4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738955753;
	bh=Qm44zSw9RC71FPXL1cmrEn3ZTauwmJtNY2Iqs6AXZ7I=;
	h=To:Subject:From:Date:From;
	b=lNIiTE/rQY4ew0vyidoSycQ0oRJ9LNLabFhHUxXLSCCAPJRvUF2fVdKlMiQwXHbje
	 sjm3keXYyqliwjXsQJDPgjtJ+OyW7CvyN4VV4ev//A4FBKEXJXJChJgXcGvC7E38M4
	 AKBBus2PYYhb2vBAQYHWjaADcG5LQqf+r9Brh5jX02EItUDhvkQOoeSV42Kz3okoAa
	 XKWcvAbw1TXPMszcRbabPnLYqzMUJFWRAy2JxtrRMt5l0D8FqOjllF4qvkLsmTmH+8
	 XbZLj86mlq4YQWD47DyKKFX+qsWKbq14p1tUxJs3ef6NPbEQ2Ee/tCa983NxC8WP4D
	 gRwf2Yj+Vfaow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EC6C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173895575365.3018.11891065322114953432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c950e4b8800aa33c81415fb33ef85a73a779c6f0dfc7114fd1719abbaa5ee0
Date: Fri, 07 Feb 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738955753
