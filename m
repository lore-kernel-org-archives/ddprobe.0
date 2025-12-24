Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E8D1917F0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587434; cv=none; b=h4iOPPCdxjqm20e8bWQERlsKQwWI7u6XnsbueEUoleooc978GaRrThLyFd7ZgRi/HYSXcdZmgG4aLOLATVWJPyHgfkIcQHG+0QYArTDOZi1VV2csSX/LQhokxXZY6AGioqgslvJZ+UjG+UhqYUZN2rw3UkAWyUuQ6GCgXGQCXh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587434; c=relaxed/simple;
	bh=p5EJvLdEJWmuNlmj2mVRYHsFbNREKIVYzT1bjnhVvBo=;
	h=To:Subject:From:Message-Id:Date; b=i4OOd00G+4XbMqwtDog3Glrzk4oaQuOC2eqOasRx8rJIyIL9CB98+87/XXi6eqaNpbZx4dTaVudDzBf7brolB9uSIZIBAQYDQRbMmbtGml48gYx+kQD+U8WyfsSJ2R2Ba7gfpRgDyuFk0zfA7OLOBhdPvDjcO0a0Y9Fr1XbP+7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ns6IqIsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ns6IqIsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74C2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766587433;
	bh=p5EJvLdEJWmuNlmj2mVRYHsFbNREKIVYzT1bjnhVvBo=;
	h=To:Subject:From:Date:From;
	b=ns6IqIspiERnz2uBIyLMvF9R/hRXbTonH4quXUoj4gXnuDyPlrwWzP/87ksEuMwt2
	 nbvq6RjsMYDY8YULc1ulaKO1a8PNEJyo228QbsBa9gSMRuhyWZRGXD53B4egImOrzN
	 TvQyG13SDDf4n5NJiJLQ5qSPY0DTNuDgqMejQwXa9/WQzqEjr/R+IAhtp+tpi7gZaf
	 Z9IBUIvPpkIJTzQH6VeLxgsnkR+5mG80duxnV+gWR1Ra+scW5usbcQeJhBkU5+tS/Y
	 eyqFWh0qRgY/Bb34ViUcFPRHQT8ohQLsjuOGmAHQsoEUEBLDslvFiav8ECDIQTJ0cp
	 8EqnIOMwEvs8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950CAE7545F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658743357.1994.4213701178992053907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4c1674d786fbde495afad66a17036ecb6ec53f52b27fe9c393448c1f506970
Date: Wed, 24 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766587433
