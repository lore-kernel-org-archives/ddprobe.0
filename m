Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A19480DF4
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779109833; cv=none; b=qkFxjQCcOgJoGyCtz9nuEBTf8dQawqNDArJAAsaXr6CzMnbjcd6RuOvPJYMA+neZxv8CPHVkJmQKDDUkhiMyUe6E1JD78ckFLA8XOxsIh6gjR5kZPD+MVj93jOPBz1L0qzRL5FrClrYI6wEAhAoaObXNnij+UVvGF300mr6RBb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779109833; c=relaxed/simple;
	bh=PlUc2ocVG5/BAGIg4oNiQZMwpdpdTf5/nGzXLi/EZUk=;
	h=To:Subject:From:Message-Id:Date; b=U6Pe7bbSG41xZ/w7h5Q+vJDOHAOFdTuPbjTHvIBjGUrfccZTNBm0AOACrLkYaJbh58qpmXX2IU6OitSqQl2+/sP30/bqjrFGbq+JF3taSjxNdyb87GGeFQmqHFKTVmIARPNO/xpy8rG8qaVlh6W8xspMTvO/BpIzsEkm+/1M+9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lqkjh2T+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lqkjh2T+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99F1C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779109833;
	bh=PlUc2ocVG5/BAGIg4oNiQZMwpdpdTf5/nGzXLi/EZUk=;
	h=To:Subject:From:Date:From;
	b=Lqkjh2T+eVweove/A/JQ9uDtCMjMGvKTw0GtmKOydX8p4DM3vLstAupQJeTC3sQfq
	 0AcgPgIIbHhbG3znBJfzBQXz48fAdlcAvCgxtvAaIXmenUG+bC50kT4YTJEUFGHnbQ
	 P3KBEVQIWN2NBft2h8K5MZ87Mxybb7WA1U3ssbprqvHcBHgR8VI2oRtIdbtF7OwDrE
	 U0tkpT8RKB+zOzTM2l56iRyZ1FhD+Az0/C5M+uWFJtgInbA/O+1zrcb8+6PxPSlHM2
	 nOywXa3P9KQyYDmOjPvnB7/EfN5Pa/4vzM6Y5m6lrs0toWEvvpgwSeQkzEimJHLOhJ
	 L6FP1ElVHylZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA467CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910983368.18220.14429735510002133566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee86e871209d6d1ca11c8355df07f8fe750b47d6500db3686fefde6b556ff4d8
Date: Mon, 18 May 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779109833
