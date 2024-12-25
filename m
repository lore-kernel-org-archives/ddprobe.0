Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8DB3208
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735102554; cv=none; b=ukXSxbGPoF9+kd4oSdE/FMgxbepyg1wQZ7mH0+KNOj2iAg4V14J6IhRxvgp/WLlhJuCq182eoHxVz/JHjd9j0sGMqALx17/XFcB9OOfrA40qx6XuR9b2KSaMnuHoSBmnE0rvOHnsTpPdq11rblLc/rvYSlxvyxkzUhuCiIWNbCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735102554; c=relaxed/simple;
	bh=NRJmSlXqc7oVdENRdRPk7IkF7BI1fRpz+D+UxFCH65M=;
	h=To:Subject:From:Message-Id:Date; b=fxzSMy3chOx3I1s6UYcAWjr8EnFpaFgmo2g+fGaLjwqrPHshfNT5A4C8+gY9NC7FlpMc0dYVTVvEDsfY1PcusMvH8ukntJPIPvjavHCrbT6pMokK42oW0QupybctaSYOSzJGCLXbx6u3zwo/jZo0ya4bd10stAC/iObCIviD9J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLKhyWa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLKhyWa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE95FC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735102553;
	bh=NRJmSlXqc7oVdENRdRPk7IkF7BI1fRpz+D+UxFCH65M=;
	h=To:Subject:From:Date:From;
	b=iLKhyWa/yIwZnD8ok++zOgJdKjJGw46Qmrf+tP78t94x8JyNy4YMxYh2IEWvIgwFB
	 XeZs/m8Dz2X3A+z3dMoZIGOiohooO1XAq5bGjoA45GqL1YFzahnxpYgPyyp2hpxeRn
	 H2pW1IRNBkwZr5W5YbgkoMuqdG1bop8cA1rEMasq2eAM5mZgPqWYYsfha9Efkf4h3m
	 M5stWqQH/lnSC2PUIgf0RI8euqNyUiqps3qS4bWU5C5XVxL62oA/NHu98q9r48ZdPC
	 KEIBJBpUb5nntCeFGif3V0PK+DadNP4AEc7agefkHiY/P15lokWhc86LUGxrAdUdny
	 /X6LniLGn76dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98521E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173510255361.22119.13505536980239839953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05cde0a832c3c8bb69525511cb25c9e7829c694f69c13c602a3f427a43173d2
Date: Wed, 25 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735102553
