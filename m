Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7BE2594
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740918535; cv=none; b=H9Zp4Lt/bv+2SbsIX2WVfKBbO5lwXXJDCxDWvB07z9N07fLYb7iWC3QcFd8u4n26hSqiMEx9Scuh/69ZzMzoJNKA3xZgAwANJolPWiNuPQ6QMLFCHsZ7QQP6zFu3Iv7UIRLOI9g/088NJCAzKkWWVg1gsYZiIh4XuGttZN9zyns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740918535; c=relaxed/simple;
	bh=QCR1pFZUFYa+GDV8FfuVoKMdSBC8iRgNIsETEeQ2jIs=;
	h=To:Subject:From:Message-Id:Date; b=AUmqzQEW0AM1ZWeI5RU7Tmx06i2JNedD2/yczaJERr1r+AdD6G/oawD8A91yM8y0gZxGgzvH0zbuTYHYIovbC/iGEZCxglIlYtm4zEUPUQg2QvRx/9YQFznEjE7+vI3FhGikK4RF++ScRo6Ceb2UnL/tbTPNWTDqrBG8QNwW+0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQWC6nyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQWC6nyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C2AC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740918533;
	bh=QCR1pFZUFYa+GDV8FfuVoKMdSBC8iRgNIsETEeQ2jIs=;
	h=To:Subject:From:Date:From;
	b=CQWC6nyWdwZx+ZErA1oTViBC87OEZR5Y9gPIBh/sRXedT23T+QGaHPSzjF8dC9hKY
	 7n5HBPvwTnONiQ3INMlvp4xIU5mPT356yUhJhsfJUoNH5pn4CVvb1BkX0JTNWfHeN6
	 TZt8GpCVWsXiuSNMF5hKkLve4JOkXE7DrbjVfeCGMz9ERHvimx8Aras0QSAp4b6TTC
	 PsaLOxxV9eq5DmBF4UEXXFOa/OjF8u/LnZBhcSk1EOrt1QvHBFTCIGtDLBmljMr2tz
	 blUChP6/OR/uVuPggX9uC/j/8g+IdM3QyjpxQtui+64gISXZpVOa5HoFQolfyH1T8S
	 OrXjhSc355Oww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A016EC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174091853364.4109.728557810247152495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9348a20dddb380180b781a9818092660ad273e5437e1b61f774ce6ee7a92d5e7
Date: Sun, 02 Mar 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740918533
