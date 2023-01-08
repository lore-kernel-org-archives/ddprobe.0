Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E798256A
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6457C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673200287;
	bh=w/alLFDKRn/OJzDWQ+Mp5eQ+0G12yX6TbzLEVE0sCFM=;
	h=To:Subject:From:Date:From;
	b=JGP/UleiQtCHOOJNOdHv3xXxO5JMcrMpAqgz7UqIVAimBXmr+fxmlPPGbzrQvDxHE
	 vDvwDfhBb3eomp58/Y0ZhHGODX9Z5kYKof4qYHvi1iBlOlj9k1M4quCAHL3wfrhW+D
	 4JuPiyt/wycYsht8rx5ily5rsZrAdyOzQvwIFMvyT5P2ZwdPJRBhXGQufHbbtwlYJH
	 BOqxRJOTMNfpFl1tXHoY/zgRDjjRuIIffG3d0+bSbX1Q3zLAaD5I21ZgbS8w9rRkJu
	 NkahG749A2kFyije0cDC3uwY1mCLLJYG8SRXSzqfkPrqlqsN7rhoWSrHMk4ZC2/18g
	 C9pCxxiTTufEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F618C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167320028750.23021.13192412707030892394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777ef95960be08ddb095248d2961bdaccfa3a3525bcef1a2753f0dc5bac53155
Date: Sun, 08 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673200287
