Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E311384
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 13:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7160C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 13:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687614188;
	bh=o0qOPu0t/r8Cr2mf+ZmlUX4ipH0StaNU1Lvy9rc/jdc=;
	h=To:Subject:From:Date:From;
	b=h0+2ll7zec0WHcgnaWLOBddihPwoMotFnCXiYeqYtWQpNDBVuOIMPh2fl6QckQyA0
	 YOir84vY4CWeymVDBw2xDjuxM0xKbBRu5Qn3K6TgjzZGwcwnOx63YqIvuRdSfC7+oi
	 abluEsayKQnVgxcEN88IAQIZwhZLxYioEUdr/6AzdkTuOofGr7xk6jFIgeQGsM+fKk
	 W+Vw3w1HONVH+VikdUXFIH+6PlkvR638vlrzqjZ2o7HMi70idQm7jICT6Tghk2x7Yo
	 1+h3dbStgZVGDdO/gKK8bmVui6TuXG6u8bHtWJ5Ie+Mw1Uqt8m5rP8xDmT+agocryx
	 fXQtvOc+yp7/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B71EDEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 13:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168761418869.7201.9263687340442592348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73811f9c6e99a84fa459af201bff609df3923ef7782ce86ee2403763d8285ea6
Date: Sat, 24 Jun 2023 13:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687614188
