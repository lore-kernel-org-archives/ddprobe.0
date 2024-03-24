Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB1A5A7BB
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711323497; cv=none; b=YjizkZHofab/WNdg2FZ+Cw+oYJon8VE0kIW62FN93Az/mJp8dwOSyGYRcTmkPQ/kYvldSvmjpwO7rQZza1Am03QRgwZP7NDKYUYGmK65/F4nrOINEY4bmqnttI1KGKsrURFI/dr7mXucm/S3OmpYSOERVmO2Sz5HJjVu9jS+sGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711323497; c=relaxed/simple;
	bh=4h0OTG7ys+vlG2x7yElhGkFP0sRRYgD0p07ilMUKdQo=;
	h=To:Subject:From:Message-Id:Date; b=OgPwdQq5yLytxl5lo6t5qfMCrUaEQb8SGSmB+YKRsNSwaGVuWmzJ95t0O4WIA8glXKF+m+U3BVvZj6CZHalLDz+DsF1auuT668Lbo3ZPDmzx46a6pmnQgn2fZLqlcBuiP3vpTu6U2lWJ+h11la7pHmL2e0MGM6mxo/PW03bI6ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdqwZQDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdqwZQDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8092CC433A6
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711323496;
	bh=4h0OTG7ys+vlG2x7yElhGkFP0sRRYgD0p07ilMUKdQo=;
	h=To:Subject:From:Date:From;
	b=VdqwZQDUCj0JIn1Vci+xFGZQbcws0ba/vcivfSx9l0MvszN9u+lVVdvT3xPL8TaTW
	 PAFskkmPnYW66hMOBN0ku/poELTESQ6H810DYyj2cHqBSnOB7KBUc4w2R5TSYbQZx5
	 IlyvJn4Y47FBCLOfuc6V7yUpAeAIsCuzmfYSYwGRes2DcHQJfvddoy5vIUrMq56woq
	 yZ11OXyI2hjYV1gEMy6K+P6NGRDPpw+QJ1DUd1LnwZgFRGw8EA2Y6c7mXi0W0zpIov
	 b4zFpvgq39HhiMFattH3bFZikpjeE2krxmouGeywOveiHa7af3kAOPCo7y1Q4wTXAL
	 p6X2VYo9Efv6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F1A8C54E58
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171132349643.29113.11605600233978815896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff14bb009c5143b7ad64e7d0e1c93a6b37fb01bf97ef144a06f0c4b0d7e2a71
Date: Sun, 24 Mar 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711323496
