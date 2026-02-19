Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DAC3176E0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771542894; cv=none; b=gQ8MokgDb+5QTPNY/N3bM8HS7mPHGoYmWp41UtgCpXOzfTTJrAhDbkuEgdjgLvtgqIecqRJBNhc124EiKPSOGF4wm+Ht3qpGGyipudmH2gDNaqcqfDxCGipwSzaUZ6yDDnI0R8jpoAzKyfDYh98Abbw94QyMKjg7tHZGhtHhGYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771542894; c=relaxed/simple;
	bh=IaEw1pd1PwuV+JoL/zJTMPs9GjIakxWG0feylR6Z7MY=;
	h=To:Subject:From:Message-Id:Date; b=OIibLrZl8U+bHVKp+MlP/EJb8MryKT5zYdOxar4zb3tRmSD4bj7GnYNS0no+8QcrFDbNghULaXY5Hpk4MmVohZL/PaSnBgm+SsrxyGVLBK6G7ZUgM4gMQOVAV3SNrcbqzdSeDYFrSCv91WIL65ogdzOL6MUq4YRrZ/PCecg7JnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ogj9ZrWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ogj9ZrWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9540C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771542893;
	bh=IaEw1pd1PwuV+JoL/zJTMPs9GjIakxWG0feylR6Z7MY=;
	h=To:Subject:From:Date:From;
	b=Ogj9ZrWNUFnRpRHVY9AAwk7O+ilqKk2O8SxzkCPqlAk5YWu5SuZUOPsswkhCjrFve
	 pJAOklHIJ8hHLZ5yN10gvi08vitcc1sGZ14K7acZNpGhBfF9qbJZGlxTAYlsEZp0PY
	 Z96PpJKREet4Qf+VcFgONT1cngpig8fFEm70WDezzfpzrijDToCbko0UPunA97i4Yy
	 qgo18dnAie7HkJM7BI16nbP+Hadc0pfLJQtLT2RZfKX0SR9myrzwEytK4AePYyZv0j
	 xEX/ARFTa/u5n+ChxdD/shW7yRrvl0/Hvqxl+zjMMgBcEp6SD8mL/0WV0pckXZPrx3
	 qRsBt/XYrQFtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA4BC531E8
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154289361.705.17146741210887469502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8bf0c1ae7c2bf7ecafd73bbd120b5a8129d95811299390025a5c61707ee074
Date: Thu, 19 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771542893
