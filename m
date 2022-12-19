Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DDBEC2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 859B8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671427887;
	bh=YIdHS/bedAKQ+nAlkyykWWufeRg+3pBpvNTwB86lbeY=;
	h=To:Subject:From:Date:From;
	b=dwMVUZVNpxhXvIHfnTaAsmgzlrkiHBdFcmCFXjkaFP+oEIy7K6NE6pvjdOmBVuXE4
	 o1GJUwvZY306NzZrsVSh7Gwh0eEXDLQP4xjTlfuH/2hY8DCGTtF6GU3oJ1ccXb1keJ
	 Lmxv+UCLdoB2TJAy3Tz1Vl47eJeEWTi+IdisCA8+C59CvLOsD508ibowuesqcUJImb
	 VLDgDBuubpmJoEGz+aJ8F8WdyB2en2CkC6PZcYExNPshl8rStZlJhlhz+IX3yThVsH
	 cae6IRbAcU1gVwckVvtdHdlYUj1N4qjhR7xJZOqkqdytwGARTJ22FXlmtXhLupwyiY
	 udphYOwFiOoDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6996DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167142788739.25411.16939778809026826577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b6c526e3ff4ab32c1970fd866397895baeebe9a6f3272ffc9dee8d4c2cb104
Date: Mon, 19 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671427887
