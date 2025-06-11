Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0922E6128
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749664794; cv=none; b=XbWAgTLvKKRz+VLltqGZfSNX67S6BRC4WLLSDHFwidtv7PyDxJ15wGHKMMooFYkfx5F6b6/fg8UPi5FrhM+Lav7Z5hCgM2SrZ7p6H5Opf1qjmDcvKJG/v2xYGbQrDjCW/7/sSqTGF/HSSChWS2NSRntu16lXq9GgGVQrO18sXcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749664794; c=relaxed/simple;
	bh=ldOhicQzhNWvvw6hwvXHHPuhFRQAv5WnmDk3p9rD7HQ=;
	h=To:Subject:From:Message-Id:Date; b=OSP/eBbmmWokM2ARHIKC88XnBP6JBzUyi6qEls2mOeNz0jUNk8FuiziZ1Pe0Fl4wvOrkxVDZcfCnd8NsDYjmqqIt6BTi2IUN/4PHjI6FTJYEjagiSLgUFesWz7FL3XPv3421CSOf+HxaHu/j3/TOy4gmvvXGM/GD95gule7RQVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjHgTHph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjHgTHph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC53FC4CEFC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749664793;
	bh=ldOhicQzhNWvvw6hwvXHHPuhFRQAv5WnmDk3p9rD7HQ=;
	h=To:Subject:From:Date:From;
	b=YjHgTHphJ9ntQEfsQ8Pb8WLmy0VTLmPQnuNnotUG6a3KYeyP7f80jLBn3mYY1De8b
	 AyGYE1On4O86OSAS8QuWHZAMCsC8WzJO0V1KOT01Fy9TPxMNI1UmUPgD/AI/R/YGSb
	 CQ8xbb4yj0qSK67mgBiQzG6AlSMQMTf3Mpc4KG6Z+35HstyHto8HBOdaIpjoR14P6E
	 lZRmleZezSv+XoFFo4JNqwkuZw+gi5rBwzyQyTwKc6xe0e0ZQXKTaPporOCuwKRoMx
	 D2l8LL4qe2ke9OIukbHfj1yNcB5O9Em7sJ4AAkBfKS36y9fRUgmAQkVx0Nce4Zi4eQ
	 Iej8tsD/tHqaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C2C71143
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966479358.4737.960898296518469341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84688b7299051c5ee754d87bd92a3c96e8cfb09355f41f755a50b7b2a2197bdd
Date: Wed, 11 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749664793
