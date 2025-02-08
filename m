Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4043124338C
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739058954; cv=none; b=kVITXO42tln68m/jyo4R1ZHQs6O+otXh/26o8YHafoUAWuvke/qFNYo5bfmPFXYdS0BOqQpKRa0yYCZP12wamezsjV1sVd4cJJRhcZYnjacI2FdTh1d311tXapFeE3TXUyfj3ctDoCHHjLR2hNbir9fIt6En9lJ1DmNoSXe6ofQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739058954; c=relaxed/simple;
	bh=/8z3HEqXuxOz+6ONICfDL3nXl2JA7U+HcZNbJ2ztS0c=;
	h=To:Subject:From:Message-Id:Date; b=an/MLy6aTjavpfI1LKJcbTNEcanAAPnPxXLgTpFVmnek99DcVEZTZw1aFJ1CKkNR0h1IFvYVWdkNUTjOIO7VJ/jx6TdP8/2RkdvLJFka2lTPxNJHvzfsIC62UavyxBbqTE0XoWKYSokDmo66FSGOsAxefVX71iiXTW3R++atYko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EO6HIIXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EO6HIIXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC98CC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739058953;
	bh=/8z3HEqXuxOz+6ONICfDL3nXl2JA7U+HcZNbJ2ztS0c=;
	h=To:Subject:From:Date:From;
	b=EO6HIIXGDLLpQ3YCrDfLu8YwMDex0cPsiSb0I1saZm3GDrQ+7GhGx6koIdsCJZUk0
	 vljFCDbeDyAW7ji8jK3YAUaeqiDR3hAiG99N+Kzq3UPW/i++m9ebgp/0fXvPp4gHq4
	 PeF7FY/p0TBotpQKlIW7WbWy64ZE1RKbf+s15r+zGMj4Lk7qSHN4G06VUqHW3GnfhK
	 fp6VMBOFlMpRrdhod/Q1hY0fjdlOp5sGdh/0qSWHlHBUwxiYU+S7R5r4jOqHQfGtji
	 alBfBhf9krKIXeOWl19rRuPZmWafwp/MbWRV+lBCJDtxMiPMZ2MVTsq/3R9iWCR8/K
	 au3ZlCJ8AogaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A061C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173905895359.6863.16807990792999882130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b16c6599e7605b7f873b45b1fc5200b7b1999531db7222e6216648a939108ec8
Date: Sat, 08 Feb 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739058953
