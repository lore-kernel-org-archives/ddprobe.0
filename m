Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BDE1A5BB6
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745522394; cv=none; b=pN43i5/GsBWpRb9AerGJ+2y6FijRGneV4vusoQGTw9WcjgDDmTXEHTNHraeMPulvD6NKc6pvOSBjl37oQKmClkcyX4alYceP2tIZT32HxGEnn2xsI34LvAVM8PngdCKilJPmowU2ODVDmx3mswQwFs+WqSZfJbXk4arv25yYbwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745522394; c=relaxed/simple;
	bh=YDxRYJWChNWmhqB4klm5q2TUmNRADt524QEcPk2YYwc=;
	h=To:Subject:From:Message-Id:Date; b=Y2y/653UkFq8tNS9A7h1DRSsHZFc6IEqinwcAdrsanY59MUCKwi9z1IV9oFeln59Q53DcUA5BZRvum/fBE0z45QPnhmiLuHO3B1bnMl94RYLDxV0OzyOHUtmo7v82GLzS0Q8guzc/KbCuDIbF+jTX7I9D0PQ/EqzLL93uWvyHPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgPyMfai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgPyMfai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DD0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745522393;
	bh=YDxRYJWChNWmhqB4klm5q2TUmNRADt524QEcPk2YYwc=;
	h=To:Subject:From:Date:From;
	b=GgPyMfaiE3+sfZ6eDU2dmpYcyCmUa1Knq2fTktuYPynL1eArrgmUsEWsf5jXtFXTL
	 vbMGjjs2o5zJVMNfUMW6x+4dUk1qYO7vvhEXxwC/boE3xGG0SgRNV2jWReG0+o8rdH
	 2FMiywLDNI46ZfM0Uj8aHDfauwggbs6C9Rr+H7ON+aq+kHQP2Cj6dbdLnSH3d4gMdP
	 iNaTXU4HFgSuJBQBSCKGFcCEPLavtSnnuQGlUAvu/xI/IjJboTAbVBPdcBagCuDbdS
	 MBIP1d4ZHcH8V2+xO0GhbqsZqX4uOrGcQZ3+GiWaFtw6aeYfGKEJHo5rCJ4kez3yVd
	 Shf31X8/zAJiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F38EC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552239357.31755.6152516613841904659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512f9c44e59b6433f6beeb32b2df82841e3138f993ef02bb1615a5bcb62893ed
Date: Thu, 24 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745522393
