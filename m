Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2798BA45
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DB0C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672866087;
	bh=2PEtu9hUcxNeOQupCq4GdZM4YGYG4QIum0wO6QEYpSQ=;
	h=To:Subject:From:Date:From;
	b=PGwLIuhjlt92hfFyymLGo0WzWtJizj/9CaCN+ouic+zOoVGaPgf54ve+HXvQ1NIa1
	 tz7yTc1B2feF9obBqbS1AxvhMWkHnD9cl2T8oXbV+9YBiqdgoEPOdZ55IJG5CLI+Hs
	 xkgx80UVpj/WEs7qxN4e2NKm+VV+k7KRfG3ZOyheY2DhTpKtZyshSnAdzFGYU1QWxC
	 4HvH9SGPgKyB5XQS4ezTvuCEzkh4ByWOXNghIZhQCYx9/fBlK9fedIOaurWiYTLZN+
	 WQQ1S93uA0EemzA6zAttpSrCrh/arTNK+3pFORUdvdp04VMolluKSvWPcSrQ5A5a5/
	 qsrzPD849qVxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 623BBC53210
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167286608739.14553.4963621369138335508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c00953af382faced27a3d0f487dc8c56aaf14e75961070ba45a7f464392eccb
Date: Wed, 04 Jan 2023 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672866087
