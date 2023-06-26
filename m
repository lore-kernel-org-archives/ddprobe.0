Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6629C15AE3
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 22:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45C7C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 22:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687818188;
	bh=knjcAFGx76FyG1g7gGhNvAKizRVpQ697glKI9a2pE3U=;
	h=To:Subject:From:Date:From;
	b=Uupr4SJC846OGWdzmEg3nBp52zl3gHefkziukvR2kqpJw/P0dL1qQD1s3CsXbq7r/
	 sujeDweBaxLycECFVtXMN9eAOfy+cL1TThS7tEFAJaYilR3YrRI9zRK/5HrV6qvP0E
	 qO0gkzxQ5qUiX0luKV/DApEjFvaW+8MX+np6TNbiBja8LuJx2/y5Fg1/8AlyuTUg22
	 kWc1wSHEDJRKUFA5t3l9IKcjn5Ap/i8WTKm7Taq6jOqhUtaxo0PPpKuNk4k91fZNm8
	 GgLXhaMN/9gGxtb0LLoKCHIfoV677DLe1jR3JKezdJaAjAESy7CImOk9N4D1kEPbqn
	 cBw1kl4vy1rvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1678EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 22:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168781818871.25716.16779255592417090064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8181af07b271f22e4e932cf7421e4ddfdaa995c437557f286cf0851f33dcc7
Date: Mon, 26 Jun 2023 22:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687818188
