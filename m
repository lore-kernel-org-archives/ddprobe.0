Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42BB17CD
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97F0BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674133287;
	bh=J3fNeEaBSgHSW1aXO+Q+bfJoP3aK8I5tmjImh7DL9Js=;
	h=To:Subject:From:Date:From;
	b=uHZZhmlSyUwqr7uk0shcEolQu28XpTyc5+Fj8qL7Cy5r/I6+EYN687fm0dmvxbct8
	 H4Eu1yGgIseGYxKlEjX0m9VOQLGJNVpVsuRr3PuaToX3qpvRtUM7lX3lGVdtqIXIA2
	 mRch6ZyA3agZYGbYHSrJPmoQ7s0LP6KoREAToGHpehu9e7dROjZZKI2n6F1spiuyra
	 a4vQD2RBAlRtFfyE9oud8Ht4JmpbZaTa+1BsMCnekDtoRjXvk955oMuDhsRq6M+SKe
	 rS2yQGYAEpke3ussUIZBwp4+7zlXzxFGcwknNqCmZvXsfofhefCfgWgyOpgnbSvPaQ
	 d5stcUert6WOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EC74C00A5A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167413328751.11236.15367783635517430227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5120d2b940e8e32542f6baf2debabe94f646de5db6c68cfddc6152beb8277be1
Date: Thu, 19 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674133287
