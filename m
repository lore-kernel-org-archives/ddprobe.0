Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D343917CD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B0AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671769287;
	bh=ev7Mdl8vEVCepaNOQCwEq/1ldKJlff0Kmc/U7QquJjI=;
	h=To:Subject:From:Date:From;
	b=f6yUukirMef5Di5SH86NzSY56I2/4hJkpsppAwt22dOXl8vdq8oYXre/VOycutVSs
	 0eXxFNjyea/p6KArIbNdd51+gVSyZBe2ZaehmFevn62h9C/xA2AKF0p3YIJwI7u1sA
	 cAt6xmREJtEOfEFZhbaQstEh1Jjj52tf+ppyl5YLufKD9X25thyTWD/gbahP7XS9Ve
	 gKkPJFzBkzow+YQWcm0BypizablvpSIvFXOD1GiKnaPgCl/p2bChN7RPJdyQ3MR0hc
	 CVstxZWUoUAYMLN/UFLbE1GrL6HC4jIaNjwIOgdwrE9f1U0e3U6H5Y4m3ehPqxuiJp
	 +WmbAQQ+dBCtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E257C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176928744.7192.1348311036414679889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a433082c2033841c617236bfdb08f01cb33318b7e141e2e689dc79271930278
Date: Fri, 23 Dec 2022 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671769287
