Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0FA7E3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B3ABC433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662714653;
	bh=l0G2CDhiE9cC0XKDoPcQMWc0rDLHFtKjG/XxdjuWAFY=;
	h=To:Subject:From:Date:From;
	b=WTBEPpZY5NNRyhnixkAbiHhfLmlLRZzRx9rEZ8oBonCyb8WbxBkKFMiWG5DLanWzC
	 NN2Nxg0QlhMmxozefwPrTY81vZFAaUavYxs/3WQm553Uzl2q8P8KoOeU5et3dzdHDm
	 ClsH1pWA4v+aefbQ3ma0tQ7T3h8MLNylD4XPFS82PMYErWZQ1ynz9enSstsJLV8vuO
	 yfkGY0feqJEksuiIiFicOh54V5x4l144HTJfnNkEdkOvR06rwXriLQ3Z7Bogr9ry7d
	 G54NbTTAsm6WHHvftjQhkfVy01PeZ5JFpCevbf1DLW5VCo083o7dK6q3DoHCGnxzwj
	 YqB9I3Z+00iuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B71ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166271465333.15076.123954102765251618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547ddcf70f5d9180808f8e7ed7b4af679092ff6c34d057f90269c7bcff6f96a2
Date: Fri, 09 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662714653
