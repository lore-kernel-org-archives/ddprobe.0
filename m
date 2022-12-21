Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67123212
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76711C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671657687;
	bh=UEwh7BKQ0nDd+bZlcV3KazBaex4NnKMTJT+njeDCg9M=;
	h=To:Subject:From:Date:From;
	b=XeG15sO236eLXm16bYM4UjJ4aM9CmHuDBJm2T/tSXzsn+pmlf+bfXunfsLHrFFVGu
	 pQR7ytxIsby1IaJkg4AlLfR9U3/wnRJhRLTI4kVaRXNjbhn1v/5+sHWaUP5I6P+Jbs
	 uCXBahMmqlzfliUfgjQw0iuNPzhN3sIohF4cTYhlFSGxjOX4fgVZuaKA5d/OifYr54
	 Z1Tj6tuvT8zrKAERRT4I+Swo9P6+W5EN88kSfGEOckTUZuhkRQCs/0m8Ct2l07ndAV
	 PvAHPQCU/uZUXDuNQQW7l5Ta9MGQfeEwFb2+ugPWcsE1Exron7UfGKzVoR7trC6zdu
	 htpWo7wZzMR9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ECC5C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167165768738.9143.4547093669081996125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5c6e9689ec6569153c195dfdfad9d2d92a087a2d1e6b20b597fdd3128ad4e7
Date: Wed, 21 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671657687
