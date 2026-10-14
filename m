Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809B4566C65
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791999034; cv=none; b=Bw0CrTagTKgZhX9sXdIoeEM+BEJIDRa+WFi6v91o0EFQHn2yf4XLFoCFsZARtEu72v6XvTVSaHRupZipg6R9Pml9I/bLs3CR5iDGqPxD1oq1Dh84vJWpHrSUCKnpTlnZnGjaZZ8A2sCbFQT032M2PNc/KdmT4DycN/y0VC29ezw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791999034; c=relaxed/simple;
	bh=k+IK8TAcspUSc3W5QLNkZ4fp/2oQQkj/JYOTmtaX/aU=;
	h=To:Subject:From:Message-Id:Date; b=g/mpkmpWVBPwKWrTcD/zaj3N8u7NWYDivttR2Pjwo6K4buyGYuQbMyl9EXvHcABrY/AbHDEs550F08Sp0NA5qW1sZljWzBMp3KNW44vPPpCx3ZNhZ9DLTMIzLOjEBuxGGQ3ENAly2zCHSd/nO168wjfxNVqx19Jw5J0FBPFuG+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOuvVsbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOuvVsbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC539C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791999034;
	bh=k+IK8TAcspUSc3W5QLNkZ4fp/2oQQkj/JYOTmtaX/aU=;
	h=To:Subject:From:Date:From;
	b=fOuvVsbYI9iR5hoSYNp7nXlWRGAgfQX7oPDb4aG2wTnLgCa+vrlyiOXSuBxYzexXO
	 6vSYOqP4p3VoxrjGQI+6bnQtNBCDbKFIQhbXwriZApdtVaIF/Q8rAH8CGphDbGJ9jK
	 KhXBsUYJtM75QWubUvBB4k9BrjcMLCIrO4VwSYYjcRdqIoRpD5G0XhK1WvDqtWRi4W
	 E+7Q/InlXkv2j6EjOcMmVE5QArPdq6l9dCul7Q6w+BLr88YFF/K5vQQc1FAcrFZQGX
	 lt/R2oJyL71kLFnskUbcevkPyCDrRVyhxlTEC5Km/SFkeYrKSAamGtAl4JxRGO8GDP
	 Edv5w1N+iCiSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FDBCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199903377.3485.14367899239494507951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126eb8fbbaca1ce747e97bbee4ce76f76ce116fbd0e99705948e8dbfe395dd9c
Date: Wed, 14 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791999033
