Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7BA81876
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C440C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671525687;
	bh=gA3Fp9U9yjTJSo0wRWXuMkkj+IMBDBy0qtwW+0XErXc=;
	h=To:Subject:From:Date:From;
	b=D2QIJswwzWgkC2e6LalDYjpe6TctkS1JSWU/sE8sXNAL7rsgfaN/izCXxKQFlmbzf
	 vOzIBKiS1/BrmpjRnJYhjN+G9Jmk6WgQS0sxMvGbUw+/tzS2M4x0xIf23aAhg083mk
	 0prmZ+VZIb56EAsKZR7AlfArOH3A3gWIbO8Xh+S66ZpJmEF5TuwTEGuRXZEzmqsI4P
	 jDOy9/vY/eTFBcpL1xgpg2jcstjyjHCzZDORaKydRbgx0nMFgKsx/BTSxsI60KtN1T
	 oWSUx6mcdPxedonGMJqMvKb6Moh81E1IT9xBRRY08QGrDcsWq22Ad/q5955ypq15nV
	 /JMPUPTGFku/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FDAAC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152568743.22999.17870852589868208621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea41176160ef87dfb8a341b294318cc2174fa46437287f59f646fe79a78eccad
Date: Tue, 20 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671525687
