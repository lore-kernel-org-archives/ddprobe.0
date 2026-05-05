Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291BB3624A6
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777959454; cv=none; b=gL7W0FGaSijDTgxEOjWR2B9AgZWRWTJ+2+Cr8NyIeSNa+pzJMZdUo/d5p6dvg87LEtLSBrB7VE/rEppV3Bop2P9RGXSi35RkSXpFixzmGHp60IVg6uu/KEgJlxRim0tsvXnLqtPfD9BsHrGJPm90o6W7/b5CjunRjSmpZOafA/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777959454; c=relaxed/simple;
	bh=T/bvNMBxoxR3EyrvkmHZRTv0QKsj4BEr3IzHwzbI5Q4=;
	h=To:Subject:From:Message-Id:Date; b=grkIgOyMAXvzkcdJmKHtKQjajO+R/g41Y8Ceg7tNdcU01sZl+bvzymoFf58ebrhFxhpK8t7XlYM837EGercFyfSlE+LsoegbV+RgS20NUFTvUnm4tCZjov5QN/hT4vfPxzi2tZPHCFX5PeNXoO9SU4XtSVF8VTvck4o8L3AqBYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/09kLUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/09kLUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7456C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777959453;
	bh=T/bvNMBxoxR3EyrvkmHZRTv0QKsj4BEr3IzHwzbI5Q4=;
	h=To:Subject:From:Date:From;
	b=D/09kLUAUxdFYQLmdBKljZDKA81OkcggXtNO9BpT7gL96Ay+AFX9GfT42ar+ihNYE
	 Wi9MJbZRpBn0fa543m4BGQQvdh5K1TkM5aT0G+EgP/UMutdEqF3zt+tyC7VoYr4s5e
	 30I6YYzIw9YBiw//Rf0OgFDHM3DuuXPguYbb9IjxrzMO/PhYiTteq3OLGMeYF19B9h
	 jq2w4Ox23nOyefpKKvDwIHpcA57v6Mn0RNS1//l3OHLByl6g+HzUxbMEIElKU3+JjY
	 Lud4aaht3YUHwXpTEnzIqGTR8LrXgho3iwZZi42rFCwxwsSHPj3jDovbM0EvSLJoww
	 dc2VJzgxGujWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F9CD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795945368.3725.6011410937161669640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d316f1158086ad41996a18a710d729da51d1d194333065a0dd9b814abe0da545
Date: Tue, 05 May 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777959453
