Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95B24B04BD
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788443435; cv=none; b=Yo/pcnVLZdGpFJa5hM7v0QMlDYcvrPxB5OKAq5nDVgkYmZWlZz+slKt3S4Qwk2q0r0Gc3NzHT1W+Z+9Z49PNpJs4o+lGxyHJMx7Dz0+FpLZZJWpFmKYfKgJREOmaKvMTauRpyYVaChhF7nTJs/5HX6rzh8RsbFDPevZ5dJK6XtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788443435; c=relaxed/simple;
	bh=tuXjZWI78TVO4aMU6Ncw199LhIdXJprNFIg0Qmw+FLo=;
	h=To:Subject:From:Message-Id:Date; b=iYaOSjFc9GpmahGkVzrapYw/9DTZju8k16SFb5FZN+1U49xNKAh30Fv6P5s0DufkPiHMriUk4cvngcES+qmLBIRiKgo80vPi3dXcI3WD37muVbKskrE/V9z1mBaGxGrS49N4aUhrgKF+/SZcN6pul+TIpC2ygPfcN2kKIxtjbeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0YXrTX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0YXrTX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF5EC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788443433;
	bh=tuXjZWI78TVO4aMU6Ncw199LhIdXJprNFIg0Qmw+FLo=;
	h=To:Subject:From:Date:From;
	b=Q0YXrTX1nLvUEM4WQB8Lp74auwDorSl+HKqRy7+hwzMiCdER9Aj1AGBEnRaXI58H7
	 rJ4aXK8dstFN6T34KgoZx5o1N1MtSi3qageH1ed2CI834fKhsf+65srDLRGT2dPAvv
	 Lz394roiKhY4p3N84EA1ac+I8kNe5NkMrT0a60oMuaog0bzCOzqxE1Eq9NS64LY8K7
	 4/ldgFwR5fLCpkNjw/VBERj5AR5Vy7A8fkMC+o9Ngr6ip7O2Lhc1L/PNZmFoVPjBje
	 xD4fomUbFzmLMRnylHiRRqGlie45iEPPjr3og/AbBHf3JS4f6ITrpkdvMSqcvJrjEw
	 eRs0bqc8gRJKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB07BC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844343369.11881.6540483860373808596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9df20e73abb9030f45d8ef096ae99e14dcf76857d8af523910e108348433861
Date: Thu, 03 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788443433
