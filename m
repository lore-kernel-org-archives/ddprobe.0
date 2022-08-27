Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D063D9C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 13:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83CEAC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 13:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661607652;
	bh=JIT/YLXL9/w6LiOsrU06qvVHO/rnrd89z3JfMReRXec=;
	h=To:Subject:From:Date:From;
	b=dAXdQ4yTeYD8iU2A2YVxxmwxnCCDlRnM9gKKV2A2V+xjFemsfnM2kAbqJYtdIlFfu
	 Y1yi/7SGNAF7YuZCZ9oSB+zGLxVJWJTxcJAa6Nm0EtrlkNlEIFLCFOLfdo+MNuH5Te
	 sCvIdx8Q58HM7fGis3kS6f3O7UQA91kp2m1p5D5VnwLEg8TRFGKY4Sf9OLLH8uwe/K
	 j6eeHlhItLFraQOZeGY1c+LuO6ya5NsBFTI0T3eYXyjb4KTiJm9rlEt6xKUgNJLeZ2
	 n1I0yh42YVa79+2nwbMYVsQZLD9+Gg4qJ5RmuFGIABTZJDCoul2nplzCtu8nzdMqhw
	 o57o3EV0lQT8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E483C0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 13:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166160765237.21125.1330476584813485009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca5ede09867b0b6595be1c972768ff0c6753c9b8faa4dc3eaf1ae7160736111
Date: Sat, 27 Aug 2022 13:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661607652
