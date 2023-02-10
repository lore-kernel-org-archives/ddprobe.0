Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3427F2FAF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 20:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9140C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 20:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676062445;
	bh=0yJVAd8r807TiiQoNrxe+cvrXlZcfU2L0frjCN1kGrQ=;
	h=To:Subject:From:Date:From;
	b=V2cEccFyl1UbdXNKSJn1Age9KBH8/V6Si88eYuOQkRV3FWqQfaRFLNcAkkaXNmQhR
	 BRHQPYtH99txcf8lLuPfC0eub03GRVliZzBizk8WrkeEMmqsLMMcSQ4FDj8Ee8hg3f
	 NS+/dw8NN7iZ5yqO1DCQ5egKOyHL0jolRawYZZpgWlA33qnHv6/sWKcVTu5F9wf6uo
	 RLhD6Cb/1mC5YVHCPLQkQpgkKN7D24sKkcYFp71NRnipn0c7I5HfUKzf7qOoKpeFSK
	 bwJ8Gr79DdPw+8K8CWCNmT9ApRw1rrLTVqSklT1HgokBBbOLgWp5HpeVO4M1p8YhXL
	 t4uSSI22i2nqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0FDC05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 20:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167606244576.22648.7942795388679167794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427e944040bf647fdaa759c411d3d4bfef2bb3ab13a15375622df10ee0052409
Date: Fri, 10 Feb 2023 20:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676062445
