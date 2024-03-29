Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6FE3BB55
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711696697; cv=none; b=jKeqLXq7SigEOSas3ECuLx9q23La3VZpoc2KkgW1jZHEkI1m6oFdpPUKEg+maBh35vNH99B55XTUNDVmv6gwfJOp770HBgDZCikUiNtV+/t5sOHTSlbqwUW+KqHOBimBq5MYZDsIszOKyk2cguXN1PckDepUBsDQhz4Hc5/kZN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711696697; c=relaxed/simple;
	bh=fOUeu+VjvbbSEOarqHLdQsh1A7guQdHieomzjG6C5PA=;
	h=To:Subject:From:Message-Id:Date; b=tBoJtJK9JMJKW8DJBP6AQv5/POwJCzgc8GL/WlrhLZh6eJNPgRdh1LEd8o1QDm7yePrXcA571gHWhhNKCh4mJRVJ6JdzGZA1NKpaCas6OyjA57Bxoyz1kzQDQI35R5IqhFoU1SQRXNGo56vBDDRFx8RiCFoIXuysXsxVPqOGcKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyZkvHrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyZkvHrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C3BCC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711696696;
	bh=fOUeu+VjvbbSEOarqHLdQsh1A7guQdHieomzjG6C5PA=;
	h=To:Subject:From:Date:From;
	b=HyZkvHrH/YrA4pBne7Sxv3YsnMV/QiQEud5HK/vB2pEHCQheYs4mzk4cUiKnJWpBu
	 6tWV1VrZ5RxhEMDkw68N4AR2kYlHUFnX0cpJgY98FBapuICyvzboxYZGx1sjTvKGEP
	 5o3L01gP4qfWn4asm1WbMtwQ5vDDYTNBxAL47SsfInva/eVoylyoFABV4R1CbmpXNL
	 Li+3s4pFSJuij+qcItJ67+ALyB3mpYwGtBbH/MKDt5k0594sFCGHHelGk9UKItrTWc
	 dQ3eTc4NTafbMjBAys0E0il8ZcI/muOCcVKBhQl2F8pgMeCaxar4dx2Xb+xvEJTyco
	 oiJvnPopT28cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C11FCD1288
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171169669643.7123.17383939868618299771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae84e78e20fe4b2fc8339d795f8d507f1b041546240ffe3643976495900b3ec
Date: Fri, 29 Mar 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711696696
