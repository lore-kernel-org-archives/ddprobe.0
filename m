Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6828E372050
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781934994; cv=none; b=Ds34BK/vgfwqVrBS0Uw40Nx8iULD57bOWnnX2FtyOHPRegW4imQB6jOoUbijhps53Ef0w9WWycmZQBDEUWWBdTq5Ihcqm9t3QDhiBTWcceob8LOayByMG1u3sXQPidxwnk7HKu+MpCjz/oWsgvAH8rpvM4KSJkBN/C9+84Xszoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781934994; c=relaxed/simple;
	bh=g9s4RT1QJ9ZbZKgzVm8XfTCLMA10LAKPUGsyPox+STU=;
	h=To:Subject:From:Message-Id:Date; b=O3+UEo7Vntguz0o2R3U96aBt7/YQWjABFmJKu92WEey9Z1S+At9rSFn23WP9p4CHUt3BaZu/OPsHR6ax60p/aWjGupuTmvLP1wx4lAJ+XBzF9ugMtKF0bdN7VJvFDyFqrUtSQpqKG2wHRZhLgOyRwMjv7JqBidxSxYZLO/jSwSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAUozN/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAUozN/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EED97C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781934994;
	bh=g9s4RT1QJ9ZbZKgzVm8XfTCLMA10LAKPUGsyPox+STU=;
	h=To:Subject:From:Date:From;
	b=BAUozN/Np9OR42ZcZ4gq0Ld7faPu2hCWPq/NxcyJWSGDxPmZJEX4lSmPW9mb9rEy7
	 E0V/5FUamLmcKUONV6yHqJLNxFz2hIFCfgvLvovE3LjOtw/K9xEBxkHVMGlPHKdWcu
	 8fm8nGbt40OIsBTS1QVhpPtFR23/0q7u+ObM0MtJICMtAi3U26l7jP0UbouDnVVycc
	 n5Mx/3+Q+RmiOouME24GPzIBXITd6SY5yaBW63of7ehsEDtyyVbz797h8IgtI35t7H
	 Yhe7kqZLiM0ZJQO2M5vmUrkVHdOshVGRoRFlRjDAAEElXQscJT1Bi1nQ/Y2OBWuTEN
	 3PCTFPZOkwkJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF92ACD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193499374.10845.2198871215985318887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67fb074d4adece75f6fd2c40c7de43db3e20170493adee1b95e8f1bcba9ab415
Date: Sat, 20 Jun 2026 05:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781934993
