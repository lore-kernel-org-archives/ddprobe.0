Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2BC225A38
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791685234; cv=none; b=ThZZB3xi4+ztHfzYUEQUUQEPVVG0WP+cTH939i1HAIRQpF0OuBS29xhgvSGrjiPAYbKfK/M2SuahHy7ZpnU2aPb3a5ybgViP2WAd4EcMUU1NSn43AJidWZCNq+tbp9nBeXrNvQgJKgSzwlRLQFPS2AIQ41phKgqt/iEpKyaeegI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791685234; c=relaxed/simple;
	bh=+BjgyOHmvs0xd5JA/8oJtdUHCiOEKW2uiPlLF6ZqXTQ=;
	h=To:Subject:From:Message-Id:Date; b=ceSWfRVrqdUqa2y4Tm8wQwYX2WCGcfdWSP/jUMFJQ+fZsMRHQouycc4PqVAaFOaU5So7KQ9/tg6SnrBnblpnh+v/OPa5/GJxZXNOK1KaOKUu1qUKeakzbHRdITeV8E3vUWZrM+UtGth8MKt4xwoJguc8WoAM5qLFsAdYt1/swnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GurrdZ+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GurrdZ+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F03C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791685233;
	bh=+BjgyOHmvs0xd5JA/8oJtdUHCiOEKW2uiPlLF6ZqXTQ=;
	h=To:Subject:From:Date:From;
	b=GurrdZ+5YAbOLaQHwVKax4JOTcjAdAhttaWZkczi+kccnL5qL/QqCZjz6ZI1yEk7/
	 /vIigZTl+GZrbdfKChmclLyYEGRp5a8izMifqiPf01Pp8ipNmfUqzxHoV3pMzRX6nD
	 5ddO3hKWGLchGiFwbkQUE9MDvr6o4VdDo4r3iZGoVdjYA1jN1kr1mRGxKkho1p9Vie
	 4NomTCifBPJv1IHH7p7vMG4+7ZDniL/4xv0IAMyg6kvVQESKGaIhy823XA9dAUtZXK
	 P+6W+PO2zYsKFMG8UdFBOeNsYP8KCzv5A1SEDEWuD64AB5wpKDxdVdbnVEnLK+CzvE
	 qgxXMHSnacbQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF245CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168523368.2746.746191374950704801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a86e831884cb541dd2046b568cf07ec79595bfae821017c3150bb5cba09ab3
Date: Sun, 11 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791685233
