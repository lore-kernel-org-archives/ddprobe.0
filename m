Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29868137D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705726097; cv=none; b=tAKay+KrZ1selFc+rqhDX7wZdoiMA3SVjjgln7ga4OAN5/pkW5+sm+MHCtlXPyipdogzI2zxBFqQS2XLZwib1saJv0nn6cAfXxiJlYd8mehRnWuuOQUlLcw2Ep5XUOqKWYviqb5yABzyVzwphHR1a/pUT/Imt9AMy8O6p2DnCas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705726097; c=relaxed/simple;
	bh=OUlbSZIW4e8mxeXyF9k6Mx3CYDFoKUxUk5M++dPtI64=;
	h=To:Subject:From:Message-Id:Date; b=Rz+a/u5eZ7GJxyQXKYwQrjmdf7QIChuLezDn4g5xDUAeCmXlQT/elsAcPIladguJ5BUSm4+BxuucdyJiElnB6RBU3HaIFPXcgdEBp1KEe9PNTPxWhE2yJGXMPPv1h0yKavOXkwHPfca1PaTmcdyk8LPEUjlfquVewtJDWOT7W7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9ylf2Z/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9ylf2Z/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80851C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705726096;
	bh=OUlbSZIW4e8mxeXyF9k6Mx3CYDFoKUxUk5M++dPtI64=;
	h=To:Subject:From:Date:From;
	b=e9ylf2Z/PgJU1DbsHxqux7IyiwfmQWvjvyUQvQbsY7VzZdWPwXdjl2HJMNoQSSvWh
	 AG2sERiMpvOa+OcJebXkIjfidn/UqA+iLw5tISK/LNyW5Kx3yvWzumBLFQMpC/sKnP
	 Oq2qk111JIUQmV3H8YGk+KfXB2p4PfgCW2L3ISovkkol1Lk3GrKkB2i+fh3ukFyJBB
	 mjWqx2xjGhS5YBn6YFt1SF/ipuboJM5z8+cafQp3nSAWGwHJpVpSg7IAgd2sCkSADA
	 z19hQJmA+OwD8dyNt+rAWLpqqjd5MuWA+GwSou4WKibPv+88YFMR0CKUYZNLWsNjs2
	 7jl5npK0WiTvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66633C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170572609638.18651.17907267741751452487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170d92fad7a2af4abf45206ce657964338db06537fed4fb9d5a398954231b799
Date: Sat, 20 Jan 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705726096
