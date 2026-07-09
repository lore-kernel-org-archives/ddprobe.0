Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351E73C5546
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783591714; cv=none; b=U/3s0igglrrMOxqRzmHa4Yt091ZbOtyJxl9GgBLUUY+4bwJgijOAK1rKygn3+3LNHCh/OdX9yzQsXQspj+1hF7SOt/3thexWxXua4P9J5ihgfec62ej4MFxfWkKWT1FqDxgKiSN+a4QjhlrOR0pvlivjqmNuiINxNssU4jgXjl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783591714; c=relaxed/simple;
	bh=rPpDPTGt36h33wK4iy1VxU6pF889j264a0D6s3pS0jI=;
	h=To:Subject:From:Message-Id:Date; b=AJntnm/s2UwcUGpw9n74jGYJcZenEc+g4XAvasowfXgDdGeWU85d6taCxQ+uZMS0/Nvt+KfQMtRUKcIdJ6sdyPH4XXDA4lwg1lPRL6ek8RKHKD3/AhSLllI9HQDinRSv4NuT84iYxAPqB7oD1pJG/tXIrxt+DwLfNCfUnYX97E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzCo1Zfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzCo1Zfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC435C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783591713;
	bh=rPpDPTGt36h33wK4iy1VxU6pF889j264a0D6s3pS0jI=;
	h=To:Subject:From:Date:From;
	b=DzCo1Zfgyahv1lxFIfqO4Rv8E6SCXkPZyBnj6HFkJkeG7UJvSmHhMonMl9S09jvzz
	 FxF5Vp33G36fe+tM6+SHlkDboPhHA43czwR8aJwl1n3FPmdZWYYBlY/hP2vY21YZY+
	 6szfJV9YH7qb1XDIhWeAUMn4UbAEjbY0ntFYU/5qEQQmj+uKRyVGWWX77xvGspCrby
	 AZl3FnR+0Qiu4J9i83BjgewK5pz89sQZMTCe1C0G9uBFIty1JFGqOFiJgOrN6lvVK2
	 BzvHIwvlTD7BHQpRQvQ4CaUDPfRPlLSDkbkYuDIfHNEkbrVoOyeABuovsd+l8sKpOD
	 UUmZLgxN3yJ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA8FC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359171368.12761.13695703482562260378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421dd718bbcf0d6c344ac1259795f352381fce6fc7118297ccb6e89486ff051a
Date: Thu, 09 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783591713
