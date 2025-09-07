Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB341A2389
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757270395; cv=none; b=kCDQJhDe7bxhbeCZJeddfo7C2T+Og3+pj0LhDBRiayp3k/w1MjpJbgCr39Yhd0aTLkGHbR/Pxg57XQmAul0gKP5yLRrKKwlHqRi61wp6dVc5IJRPcKzp64PzPQAwqm/ogwfGl3pTui4poqChjMr0RTF/VrmPvTkxj+zwwbHiug4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757270395; c=relaxed/simple;
	bh=KD62UZclAsNIX/zw0Jikkmpckzb4szOmzWY4YvKijpI=;
	h=To:Subject:From:Message-Id:Date; b=hr2XcyyfDtmuJBLDR9kBOZgTK1I0VB3ZDnGBOdAa/Xatgy/l14p03bJ3Okar3tTTz8Jgxsjj8qj+5CZlojIWXi32r4OXL214R4HZbqCY6ugqrOvqqJz9DDMt/2c+N7QoGYKzPu+wVMoU7ThXc3AlGgCIo70/X2kGRYH0+4idbvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCx7fk/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCx7fk/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A7EC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757270393;
	bh=KD62UZclAsNIX/zw0Jikkmpckzb4szOmzWY4YvKijpI=;
	h=To:Subject:From:Date:From;
	b=tCx7fk/9aKR1SFdeHWUKP5IGKfyIcL1E7ib3aOBPG1BhzVGE9mQC9AeNL15RMCkPU
	 7e+GDMadxjgjGXLbC8JfSOpxITeZ8vHUL+5+BJlAikz9OfslL7jZl6AJ+aAHwO4wKs
	 vGT5BI8zlId1+DG0WBBp6hzZ9mnWuTJmihoEReiJNRTMW2afHrIZ7XAeJAs/lUFw9e
	 UlFJNVzURDZhq71s1IlDzsyy18Wl5kmTa0mTNo5aWg5wEhQ2ktC43SEKUJ9AtCl6gv
	 hl5I8wMk/eZKgdBmGz59aHCAPZEjCpLiueGy160U9tw9TcwzacyHjH3i6W9G9gtQvC
	 9PFzyFHtvTJ9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94441CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727039357.10923.18387922427421939362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cddd73155400cd8849cdede4ebdcd613c025f8cc9c23a8acfce21a8616931bf4
Date: Sun, 07 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757270393
