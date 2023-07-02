Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B5A2116
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 18:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD294C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 18:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688321708;
	bh=3gjycEm9idBOCariaA5rx+oIF0d1J+AMqsTnPggUpYQ=;
	h=To:Subject:From:Date:From;
	b=mny5TSxXj8PlNOQxOna7dUb5sQ/2/liOmRO9wciok4yDDx7vGe8t3jCmY0uWcXvab
	 30XB0pJnnwIo7A6wVzhiJ6Ny6xlnHjUk7kdBVrdhYwFu3y8mhpHs7Tv9lkYDtRLlvu
	 J355GF2zYOP2DpiDO6wnQUfpmys+eMw7Yh188lKkVs4zrybIx4bQOXjlr+42R8QlYY
	 dYWfnWVsGykEeU9hFN6s3gLr5L1y8W9KsiyWzLYPPPMFNUninP9/SwDw/ZR49+rcwN
	 YXaU7tPtFROFzlBxcWL6flj0cWh1v1pud98NDKYb6yvukn9TwcCVGJOOYb+VpWPuUy
	 hGfIn3A/02PZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF384EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 18:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168832170868.24645.15516442520469248992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c789e908b79b9287f4469a64db11b062e450380dab666396b8798c4392facba
Date: Sun, 02 Jul 2023 18:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688321708
