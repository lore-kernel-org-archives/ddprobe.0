Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9B77486
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A850C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670016054;
	bh=5As8sOyx/yX4XKj8lFUy9dSPFTAGg3v85odz3v++99E=;
	h=To:Subject:From:Date:From;
	b=LQdu+dhbLWou0fR/sWzp2GdXaJOZkwnXl7xn5OXEpsHTF8BDqKv1uPF7QKBF3KcKv
	 fTVGEajys7YpgtV1rmcs/CussXPbhYWRCASsMsG+lDQIX+skNQRk6MlxqqWKHrKAYh
	 fgBVLdo9ZLTTQqIVaVWJomvrLEmsZsJHP+vboGVl87T3d4Hi4nxhhYUIqRp2Vxl61w
	 zyPIfOoXvLEZxqlmuzCyJv4nYVHHFhFSF3kjfXn6fZG5bOtdTBeFZ3iiiQOfzD1yYP
	 L0SOaAYUABwViQhiFFiOIsPMJI20Wls76dpCb1DHA2R/6fyLzOt6xMbG4aBCmZKYAI
	 kXq1+OKawn3EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE63C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167001605437.8999.5183470680902208046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e80a6daa17350b82002a76c5d8c60d9d99baebdad84733c31be9bb947ce78b
Date: Fri, 02 Dec 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670016054
