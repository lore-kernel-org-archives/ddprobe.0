Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAFC27A91F
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748360394; cv=none; b=mjATjXvUWTFtp9JAvrhN7BIpHI77Wpi+6KznJF/3fJdJVCskSO66EuGZIEVOs1nCNvCuHXkGtIg/Sg/41BqsTZNZTr0MJxLyHbUcTnmePpImYDeCy3sqPYxeqNsB5j8GnCqGdnIv476Qlwv58HEeyapWpC1BDrJqRIwIhUyzlrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748360394; c=relaxed/simple;
	bh=EhHhN7vjgSRvDUkMMTkjzGzbJq/Nf4Z5Ep2UHG2OQtY=;
	h=To:Subject:From:Message-Id:Date; b=bYqvbetm1Iwu5923S/HzPs63h1NtLwAwSfpBRVc4uIVcV8aZkarhVmAGaWOe9zGmNa+2Tb3UN13WII8dGqHiiTGh/Q5WLlsrfnlCOgg2KPvQPS020Rzt8peqOpb5XOobiw4o2jGRgQ/FJypCq48tulbCeVdC80IeqErqe7ZBRQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLmULsBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLmULsBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5868C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748360393;
	bh=EhHhN7vjgSRvDUkMMTkjzGzbJq/Nf4Z5Ep2UHG2OQtY=;
	h=To:Subject:From:Date:From;
	b=MLmULsBO2u9S7CA9ljwiVcjR28CTn795ztd2OvOXh3ftHx9VQlV/kA9Y86x+saa+M
	 A0MhuxTMyqjUIq09RTkpe5x6tZGKtjbTX5ns3PsU/sjWwwhkTz0S8+bqkvUIk6a4CJ
	 4pXrPO1g+cCVEu9r3tFsaRNPdP0R0iWWTuNYSlf8v8mI+AplWyQwWOoqVw0bUxWFLY
	 MVlYjM92lv6MBwRx3cBBHG9hXTrPN32KEnGQQI+w4sLaE0Q7XRqYPB5uNyRzkpdaHA
	 0OcjwJXVQzxTsCB3smpu4IhKy9wpVRuMUu0l44zZxFOA8Ut4/Rijk7Dgq4gw4IPKPK
	 la9fZ59KFqP4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A6C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836039358.11786.4269279678727817621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d092f89255481184348ca2610f98628ae1809e40791d9d41e7238594e18ded4b
Date: Tue, 27 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748360393
