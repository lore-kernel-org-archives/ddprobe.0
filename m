Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F7D188722
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728482154; cv=none; b=cMwxWm/EDZh6hxMLa3MQrfcHQO0D0OyMtBqV7dFoSJp5tjpuKoAU91f51nq4K3nPRMRkPftGXpNXoSDGpgNJczltskLiH6mkowoK8/ura/CHvcLT5LHBhXwgeeXVZCK6Trz4l1o7itxRd9lMbJZZbQuXTHSLWZ5BBQ5nwB8d0ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728482154; c=relaxed/simple;
	bh=EUuQv+8PTJDK4AfClSgGfJu4ew7akvq/F6bswMvzC3E=;
	h=To:Subject:From:Message-Id:Date; b=Wild5GyJAsd+0HAyY6ASMDL5w3Z4aOvCAYFYPQ3Nv9aCn5iN2TgnN0OqEYknyCI/bYU2yET1WVuFZEgZVrpgqV1Ym2XOxzfI1vPn05VJKrxK3HkCCM/15xN+NxVd5KfZWXQ8q7/BxXyncbcp4gZVQfk9Z3RD0RmcUniHxsmyCRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ER64335r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ER64335r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BB3C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728482153;
	bh=EUuQv+8PTJDK4AfClSgGfJu4ew7akvq/F6bswMvzC3E=;
	h=To:Subject:From:Date:From;
	b=ER64335rhevGsfcvZOB81Cuh6tBQnndX5LmMzdSo9675bOzULcO3CW1eQveBv22b9
	 xrgB+81JfPNMvfkxT6Qtu/nTVpkgBooopK/7bAUEstekYDF1w3sw/jg2SRidaVEdPg
	 RQ+R5xtt9+cm5pEN8lOvT9pbB3KlBuK2p9u8mXrB/LJVZCx4pIEDn/8HGgx0LswAGz
	 96ZVWV4L1XdO24RgwNJy4dO3IcpYL1BlHQMzt4xwLGwBKEQ6WCBmLeF0ypfDR6gc4K
	 qo0q+Pjrz5PkwqmyB5bvpaj0irLbj5yrjWfL61n/aeaWmvpu/CHGTmh23/eam6Px8W
	 i0n8Jsv/SRpGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D6DCEDD97
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172848215362.29914.5113673840345450355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24d9293243bf52072ad6612891e0f239b713f66c4680418742f5acf585d9185
Date: Wed, 09 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728482153
