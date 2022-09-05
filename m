Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C855F23AA
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF9FC43470
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662357653;
	bh=vJiuQFnE77YpPqJs12zz1PvfSmihkyP5cGNk8QK2gCA=;
	h=To:Subject:From:Date:From;
	b=ti/vzzF958KWGZhrtHp/rwqmdbbc7QatM8kk7VQxv9QHeU8dlEooEVVPx0osCeOFJ
	 JHOa6pn+uWY1lQ+bCm3GquZCLKZt2ZNbY0uKJOsY33xJBtjCPpWflsZodfv78alZ0M
	 k/e+04HrO4/0scupvG554dE4fG717rc7yuVXzq+yZ8Zy2TsnO1BHNKOT8rTjsUgnHN
	 xwfhSLGbmrsNslc+IvUzBsJyStMOMPX0fDc4swiZCiw6xzYdz7sZY/fYKf011QW+Tp
	 wLnH+ef3yG+Y6lHtmsgzpp5OLuXF+PFTAzjLB6Ky+oNvobUa5KUMFa7+3YCFN0s94Y
	 LinoxfuKOLn+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F903ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166235765331.11303.14013568725571249366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d15556e280f48424d837648114d4d5620fc129ab614857fb2a7c23ef36e13cc1
Date: Mon, 05 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662357653
