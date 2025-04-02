Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4C31F55E0
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743632395; cv=none; b=sj6sIVnWDlTUjEPx4iZqTvzNDBaZGF0lU5j7BbGo0wYxrZjbFhcThz9quqnjeyWo/PXstwrwbm0qMVwUuj0+ok3kjlPsBT18mWjk8TlcbgPFq3cNRI3/nk8pskmOv+EQyLooThGp6Ohq/aCOPOi0Yz7E7llxZj1tQA7qHNMLRhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743632395; c=relaxed/simple;
	bh=2rqDKh/jFPAB7DT2uQvXllnJ4+fFojoG9fGtpwA+OZk=;
	h=To:Subject:From:Message-Id:Date; b=T/m7A3+D7InAl4HVDpOQUaGKuyizMWiqXq9wcOTau/AemdWZT8oHWusUcnNBJgIPWGOuXMAO2XeqHoUsODtB3HiabvortOeIySwCD00UmEQb1cFt6RuIFQR0XsGkFGR/ZDvt/RqDOFkGtj21WlMCNrz0L1Iu/2re/GQDrlNzueI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acMI30N+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acMI30N+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A266CC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743632393;
	bh=2rqDKh/jFPAB7DT2uQvXllnJ4+fFojoG9fGtpwA+OZk=;
	h=To:Subject:From:Date:From;
	b=acMI30N+oeUrIE2tjtrrPNcwSD0WlrQsgJPOpRKlTs39yE94QLYNnL5tvKQ8MLEjK
	 puSt9eHh7JDn/n/z7m1nEFu8pwfsWvckrKGw+ybtvlAvFRp9v5QgwKT8AiDxGpOh/B
	 LVZefENNtxD+lUF97VuU6RgKQLfWa04germGm0lpkuUs7dnJ5/CKN/K0tUOdTBhxSE
	 e3WkxznmknAQOhIO7ESCMrkxpJVueIKYjrI6/TVoX6bGeaq5A/Fj7w6BbcyCQFQaU/
	 Nsss7S44a2CH7KMyjj2Gv8Ni3W2Z0T5x/hkTbMHG0JyH4NyCajK6myVn/jxJkcU9+K
	 YlTlp/LYDl91Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931CBC36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363239359.3445.13973403647180321923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedbeb27ee61edf95b927fc46919513a04649e78439b76c277cdda68035e10b4
Date: Wed, 02 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743632393
