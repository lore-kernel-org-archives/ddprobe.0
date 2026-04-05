Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF472BEC2A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775393734; cv=none; b=r6CcoCDkFFQAuf2C1VEryoJRn2XO82bz97IptuY6Jr+PucQnPWEtktzGQGTz0oL8HRDooetUZwW2GRkBs7fD6VDmhYWedm6feweAs/Pm0wB56xSzUOkBsviUv24BCE2NB9wZNBqBXNN7zts6pCqJo+vHk2d3Hk8CYKRc0p+Opv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775393734; c=relaxed/simple;
	bh=Axo4SXhKAloErS9EK4aJPAn0896B16vYri7MOjS7WDs=;
	h=To:Subject:From:Message-Id:Date; b=QYA6fQuzXt7tRGI70KPzQVKXyz7bTaiwIMcYObJ33yvzddMN2xhd9d/N4gO4rDLnHZbkkC8nEw2Q6dGEZwE/2INTS/w6OTDd4wjSlhq0qUx+/11WK3xL6GGh6pCKxBmGRAzawE1fT90uCCsh5IApD3aeNcJAwto5J725xQwI9mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIYc4KbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIYc4KbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA9AC19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775393733;
	bh=Axo4SXhKAloErS9EK4aJPAn0896B16vYri7MOjS7WDs=;
	h=To:Subject:From:Date:From;
	b=bIYc4KbBVhALxJNS/K3hr2StQumaIYYyqvtjqOWgU9ulsTYoJwChan6cMODyXXjtq
	 1s8s9ek2xZ8x/x4AwCU9i9td/bvyFmRdlyh+eNnzWEjK1yjpS9zYSs5CmCcik+Bfr9
	 2FI8iKIEqbPsVcxzJMoT/STHg+actkXVl100qUQDRtQ7IvQGOP+K6ngqN/EcAWIm7J
	 lX9XE94GNTb581NDOmo0P3EzsCb0Nc/K85UbsQn06sJV+9hkkQGLFPuXKqoEoLiKIJ
	 WXS70LCzkFxzxRe2ebEueM6mUmzWSsVTEQZZGC9CddclLvb7M57DqPFobYe0LEl9No
	 B6S6fyPwrh27w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C71EAF3D5E1
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 12:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539373379.25237.14337873118554817602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f661501dc673c28daa86476ae272a45e24f02905950be4b68d63a0f981b7c23
Date: Sun, 05 Apr 2026 12:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775393733
