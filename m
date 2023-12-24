Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10069FBEE
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRE71Mz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82577C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703454496;
	bh=nfRo7qB0hXTGR2oNRZpxaj6M6rsxUnXoALPP069BzXw=;
	h=To:Subject:From:Date:From;
	b=HRE71Mz11dr/2Hzrbjer3gFycSHDsxo9b/InQH/jvYhvGKU13EqdO2d8jGPLE0Ris
	 CC+/+fdc75iouf3TIJPuwcH7hfkvnmWsFHoxQGWcFyt58Amcbk+3E9446DNiz3tfxy
	 vdh2j5yfqatU91ffINI0C1u3deB8S38UyQM+NXYiTh+S6tU6hydVjbgrtCppLvwYAP
	 O655tZvcvKa3Cv6s4TS71wk7q3mRsEM1sNt5akYlwzz/8plleGqBU2AaNhmMOrJ0Hl
	 udQnVMAFHindJQ2uFMGJAKyhAs5zJYtIi9iV/BJQ1SpLrtW37ygwX8S80DHR7jE16c
	 9jozvKXvf1v8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65526C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170345449640.32356.11396843868647885953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 751c9b57a90be14c70d2f6d02a0dec457ec0a408b826559ddcd1c78d5ec9a119
Date: Sun, 24 Dec 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703454496
