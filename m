Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314BC28ED
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 09:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CCCC433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 09:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684315985;
	bh=rXNfIrD0fVdVTPZIPch7RrrE49Nibi4t+ffKi4taKW4=;
	h=To:Subject:From:Date:From;
	b=dYPU8D8cjdaEl+JVndMSgpUaFOjrG3/RYueOyoEexdC5a1lKTZRA2yAhDdbVyVcYF
	 oARI5iZ6XBHJQWyu3QHrTO/dUQUUvJimBT23ts5qMMGS69tFbaxtqEmwSKgtLIXo+B
	 wNlNrhg26yNmucjeKYTGE6O9t5yjTM9qKmCeD7hTYxLnwwy6lOHk32Y4u/DfWFaLqM
	 GIVxZ5giH/2pIkR57juTEVLL++ZlVdcv21gV914z1aSnwAe8bOcHEeh4vWR44cQ9Rm
	 plt8REsRS2BOYt+FSLxxhhcFKKYYoXX47dsPkQESNZtjEuXCckpi7M+Sh1d6/2MVHd
	 hoCwY/sVg4Trg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEACC77B75
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 09:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168431598576.20495.10310714050659026424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425aa52e6c7bd164cc0c057b72da329f954107f508992952f9c4d9f6afbd74c3
Date: Wed, 17 May 2023 09:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684315985
