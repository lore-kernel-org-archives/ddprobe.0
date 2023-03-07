Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4041910792
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 21:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7572C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 21:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678224605;
	bh=MBgM7RKLUw6Qad5dckEll8moUENLFbgiYCJrbhoQKrk=;
	h=To:Subject:From:Date:From;
	b=SxwEDm5fnrnyZAfNGHotNMPsmiFg/5vaXgqIV2OYc1s4fBi01du5sdNaNfxYdSy6X
	 cgdvAqdCqZfcGOmG3HiIdBNgYK6rWw2bYn57iwHohp6ZvIRiYcTjrCojEiCRtkbs7z
	 Z+od1NweVz6vfGbHYj/Eyj+g6d6OvP0Art794QgxReC3AS1FKDV2HhC96KoB7fxzq7
	 gdlQ91OS730zCMBtJRk4FAPl2XXNbO1FHXwuCjRVX20g8u/bNLeqt2nuXUg4D6ygQ7
	 4sFMH1znom442RH4lEDx4nPfuidl/h+CLOk/p9adiYR98cBvmJJEOJcaKodJodJfxj
	 jupIcOVyCBNCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F3AC678D5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 21:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167822460578.25405.609783962857044600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090cd734cdcedb747ad9f397368f5aa8a902c2114f6dbe7c528025d5099add5a
Date: Tue, 07 Mar 2023 21:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678224605
