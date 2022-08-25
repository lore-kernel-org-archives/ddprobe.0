Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C155C7B
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 05:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E6AC433D7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 05:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661404852;
	bh=TnwnH8KGS3OGUzJ0FSenUkkShSzKwOzi6eBn/9ze5Wk=;
	h=To:Subject:From:Date:From;
	b=FiWnd5OVUHlTaUqyZx07r32xd8AWl6vJoJAyjdKL+ZAOgSLPXmFxDXTNLE0+2Nvod
	 2MCH6HSTTM9p9Tda7Dhv3k0yWu2ZhSOQuBRBb1UHxy5echD/TnfYsNdiIuceYcB+4H
	 eU+aKXxO28YGOBxo2eobSrhSJwYvWpK9gEkdqxuJeZGAmC6/zCFuchWw+iCw8tT055
	 BIV2Fh6aA+ClhfXuyly94eEM2WERsHgqywjsPpV+nGODA7BiuOav6lQgDudHE3zp3a
	 kkafFtl099P61jjF76kqb0HrLu/YmSpj7XjmN+n24caWeQzIPCcO50NSd315VQR1ZA
	 s/GL+UPHAc9zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FD5C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 05:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166140485235.13605.17931603836608731805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df9275d1037ea97c35037acfdee60b89cb112604af44a0bf2f48669369969a4
Date: Thu, 25 Aug 2022 05:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661404852
