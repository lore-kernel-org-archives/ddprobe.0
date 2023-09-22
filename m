Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76954377
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 01:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78B3C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 01:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695346508;
	bh=ovJ3yzNB+sfAUJb+2RHjC/Z7OMULHc7cwKIOzqssLFw=;
	h=To:Subject:From:Date:From;
	b=XECEhPj3RjkYKsBgeHyPkyyopTjnbhsNJifT9HEHjBChNJ/qF1qG2Wj9LSPzK0zwK
	 N23qFm/tsh4jbBmhOSk5EvEsXObRJhUS6cThCEbNirOoH/7MAalj0k+m/yQ+2/KKNH
	 +S8edFcwrn1eyI/YSQLDH/E6xU2A8uC+h+JLh9Osjb/654LHcqnmgN3ImqRDH/BDdi
	 3YaDFg6oBZ8wK3f68corVzavBIT+Vqq3dFxOlh8pXhnEunLLNlr0K332w9O/fFzHsw
	 pMKKdWFlWU5GT9PdVB1CTORk/SyORdzVAIXmAXhcJtmfPQ+tOmk49l6Cn6w/N4FnkL
	 miNkrpO2qK10A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA699E7D0BB
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 01:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169534650882.12829.16410408687561341526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e768850d96151b8863f2a533ce65acc10b22e8e1b4bd6eb5a2aa6ee95593adf
Date: Fri, 22 Sep 2023 01:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695346508
