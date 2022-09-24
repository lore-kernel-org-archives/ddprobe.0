Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00F917D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717B3C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664020253;
	bh=9+vN9cKuPk2iXhsYOYh86utlByj+Gm3cSkIcGCbOIjo=;
	h=To:Subject:From:Date:From;
	b=MIeSRBROm1JMRB23gDMjBhVTDWYY4xyT4iFl9BKih0T96JOKoxOU4h9zSgnssm4gd
	 N2uVTBBPDkG5dX7CjcB9nilkAkNItLOZUNIPXLnXmAZrENk7LyrpNoGSLe3vpL02AH
	 qg+/MVs4krrRMiqMn6ajkLUyish+WeKDSd/z6fkA7e78eK5lsyzFsTR+Yim2ECQTSJ
	 Kzq1G834IveuI8f4ySKmyEyic5A2utYqCc0g6/yOgz9NejJxIXbUR2yEVN5w2+K8Kk
	 vqY2llZdzc6l3J89QY8khTzFpj7ZmykYxcXFxYq3E1N3yUgg/nxP49Y+tx7+7Rsjna
	 NJScygE5C91Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56064C32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166402025334.8126.1523869906833921232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d9556d0b793aa65a953911ef17404b137f841d573927a44694f92f46dcc64c
Date: Sat, 24 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664020253
