Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E2F1DFF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721919353; cv=none; b=BM1TctYeFWzPvBNtgE7bDkgCSQETN2dv3zlZ3dTemWZv+EbtBf8jAmFh8EGgQeJxdZPRj5A5aBsUry8vIF7BQK94dplPntz7jXyHNQieE6B1xQxZzo3w6uN64e886aGVxstXbdAkxvApUzZoTmDY+wEdQJw7lcO/78DNO836NKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721919353; c=relaxed/simple;
	bh=m0/LrwJAD997Wau+4JlrEBhvnTGfHXmTXMV0F5Mgk90=;
	h=To:Subject:From:Message-Id:Date; b=QSU98DLJaKUyq3upTQ6+MrmXgw65rBw4UvJOzBRT9HZL+qkBYh5ZxwMOaYIKNZix08IMSnqxlwBp4F20RpzGIAd3E9aBZA9Ih3PVI2L6nWTKliyfA9YIUNBqOLRluA3VDdpTEuvL1U3OcbWTTmTvbP0TaAGDC4RktR76R3DieGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yt3UabKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yt3UabKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BB6C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721919353;
	bh=m0/LrwJAD997Wau+4JlrEBhvnTGfHXmTXMV0F5Mgk90=;
	h=To:Subject:From:Date:From;
	b=Yt3UabKDPSGEL+oiwbmtR6CNhyxUXgD2Mz3E3vaRLBRK9XpwhEfs/YpzYADVN5/QI
	 jMM6GtqzTIDzNvKg/A3+sXwk9pWmq1UDj9mk+PMvBEa9SK/sZ+9qs0uj9P/jRYLNm4
	 4vkcWWgZMhr65oTCrz9PnQhzI/n2stqBUAldH4jciWi8Q8DUAwV+Qm//L55TCesVqB
	 bQtZbMoqlYrANzZCpxxY8dj5GEs/0XwCSlw3+3skhCo4c/j/XZV2dKcGZ5v+D/x8DM
	 CNBwX3FG6jGmj5cPRhmVMYRCpfp0UFVMKUxFezkoBX7AVHHlxydxESfgTZXDyItml/
	 XfA1utp0DZP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DDCC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172191935360.19118.1770602035563581067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d628625d98f133b70093b62889b7bc766a2cba2f227be3ebbe666234d982de
Date: Thu, 25 Jul 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721919353
