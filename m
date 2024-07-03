Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A63E6FB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719971723; cv=none; b=axyHvdWXXWPVFY0izJFYlHxerWQV6WhkFUn3eT+RvHZ7Zw9DyyoXlTyNrMGi6jMEtfUDKQU1z9pyrHx9aMR0ZAevVJrh86CJDTIGNZaMwgQ+KmxuaixGlvvbGOBM0LFxK6l1UqwM6Ov5eAFOM2HSZ+zVyXjRJ505is/q5XJnEPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719971723; c=relaxed/simple;
	bh=4Zxd2xwMPRQN1cEPzQDpLZK08/dwX3EON0aoVz7ioKE=;
	h=To:Subject:From:Message-Id:Date; b=tXA/b76sicUZkpPNPGWi8jVEADbDnnA/LqB3pf4A/E+OaUyhdBTjmbP48RQSjmo/pZeVyFxugwskypUiuAucybCwOBAiCVHkmECK3dOtHDsrF+TEYA0fjPNNjxy04blI9tmFD0xlOFyI0r0FKepA1z4T+8EvenOdSVgK3FOIXO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+JncJBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+JncJBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F58C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719971722;
	bh=4Zxd2xwMPRQN1cEPzQDpLZK08/dwX3EON0aoVz7ioKE=;
	h=To:Subject:From:Date:From;
	b=o+JncJBc1P16l6HkoiM/TYu35VghdR16p+xr4wCt6krDx1pjGT35UEvGeAt7cPyM5
	 EgV7VW3Jl2xRy47Bgrjpc3kSTpFDO++KFSx/ok+ExaXSzGguZMbnhkmpdV7GrCLI5h
	 r7VawJR96AFj68ZgU8UhmlSro7qxHUgh2cufGfL2Po18Ey61W8HGlQktsKn5TK2N7/
	 urPBPlw3hSgygqMSKH3lNhmecn+wEWVcSe8dZcmCDG++3kN+eF3rJhAzrroh22rDuD
	 X1J7FvmncA7EiiQZMGNx5Ge98id0via/QM+lKWUseAqhk4qjiB1z+EDXzj7qppNuL2
	 5l2JkAV6ySNxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C349BC3065C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997172279.32047.6364208715952488358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1a527fd68f1353ea1fb6b62de78e4699716cd0582138b749a2977305d3162c
Date: Wed, 03 Jul 2024 01:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719971722
