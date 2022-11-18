Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD40033ED
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90B93C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668775854;
	bh=4N6vyrz0kgvKdunCNv/oi3/wlh75JV6iRpVtqkpSS/I=;
	h=To:Subject:From:Date:From;
	b=BoUPSliXnqbyRkMQzg+rk/ynYUUQcjX8bzcSTkPblGWdHJk9TJelFMxEzAdN5rBDK
	 ky0bXRbplc/6E9eq1J1uhhK3dZ5u/Q6dhfJTuBTQrDZSAYHMbnMu0RYyuAopvwzBNq
	 oVsOgwmtCM4xMDFsvDG3aiwsHApv+eXfjF+y9HySZMJOZdTFBM1mIkBSztDSHPa5u+
	 /pDdsz3SJi0JIn+o7Hma6yh36XBmSq0Bv02DSlwa3zQHgI1fuRAX0ipQGrT+cKSawa
	 h0qSa+O+ti3ncxEoFcWSO15O2DfbL5OdEDS0pTQsq0wyNpt9UrsIJfmr44BznG1gqG
	 QuMSQtLbogruQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E53C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166877585446.13719.9476382224432825907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7185d2b44300736276ffd80bc16d3dc7f2c3383f4eb162cb4aab474dde74c258
Date: Fri, 18 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668775854
