Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C139218E750
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751006993; cv=none; b=cO4e9ll2G/xw6ZEIQN/az4k5VXMdUsdcou5dtOu0uwLZPwF3b4bUzaziIotxvrp09JtFy5cN+diKkBx7L/OmiNi8/PghK9iVlqc0ANVDDSRdKit0NJ0Hd1klQqKlPKM9obFe4WP67vr0cynKiAI2xVk6s6AKxRCsevIC7FiEPVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751006993; c=relaxed/simple;
	bh=ngZp9kDZZXI4rwENNHiKIIA8JjGXjH8bY/kklu5mR/Y=;
	h=To:Subject:From:Message-Id:Date; b=Nwc3RfMVGsp5HL36J4sUYtywlOvresb/JCHwmhOKSVWSqLUkajL6XFjwXtmF5z9kZjDavPuHo4ReMPAMC5TsD5d3g+u+hc+g5Cf+IfsoNZXCZQ6xzOFooMsjxQBDI0JsL02OrZj/faCvYqXGtpOuXMaQHfTJM1Pa3Y6b71LABvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqvP4Mw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqvP4Mw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0631C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751006993;
	bh=ngZp9kDZZXI4rwENNHiKIIA8JjGXjH8bY/kklu5mR/Y=;
	h=To:Subject:From:Date:From;
	b=GqvP4Mw+RmokTVYnS0zcvjxMyLAjcqawshxVBCYGslaJGraLUpgYtoc7tfl22hP1/
	 XBdv3XlXGvhiKm0iZPgzOV6t8uLEvCrE0/806IL4FJ7ifWly1uyQv5tCTNcKa5Bt/r
	 3LyyP+96TuMv0xd8vvyzOy7fXPsEm85nce+4HWyg9Vcm2SnZkIey24PhBCvLf3ruW8
	 NOVSWpmpHw6OIeNCgr3VqH1va3zV7zQwURjhj3GCs48BILp/xBZZjeUB/gt299ZtqP
	 WbQcLoFTfzzQGlb82meh8aa36AfpFt4uPQqiGBl2D4ALWKA+r+e3EP0LanBVnLNj94
	 s4kLKnadQ1Vdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE62C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100699358.23871.6354619302155302356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5426c76acaea353d9a9f637bf3f2b0f4333f8a338e3a64361a1dded7d38d0db6
Date: Fri, 27 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751006993
