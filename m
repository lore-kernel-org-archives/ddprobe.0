Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3640B43E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8580AC433F0
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674157887;
	bh=Fze9aHW+rotMCAjXSvPs5THViVRoWzFet2L2G8BAGKc=;
	h=To:Subject:From:Date:From;
	b=sixCKkNLbvs0s8R/1Yu4nyQvEU988nz2kd5qJ8++H5iPPBouyzo002EaYujj2X/8K
	 tg+Euh1i+5y8mRVx3pqXhwa5fjGe9ui+djC/RswBbw5m3QMRjxCCWG+MM0krPyVJk+
	 tJGDPvsVG0STaYSkt0F7B8SfQEI/XwIgFpw/lNBDCcPUDtIWzjpJFCdz/qWoBcjDIg
	 zWLi9Lor0vfucwoxhzanMgqEuPmxzBHlC9uj/RTU4eTpoygTezT19dEaERouxDCoSx
	 6XPJ2y36sUbUS6vzyGX0HHNXHOkgI8CSHL4SOa0e/a89R+2aMcrogYALfSoJqVT3gk
	 ebnv/2CEMKT5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 677A3C46467
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167415788741.4834.172153345059169985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f02fb3adfe3c9216dc8f4098051bcfb9633876d3ccc44b309a2cf577f48aa7
Date: Thu, 19 Jan 2023 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674157887
