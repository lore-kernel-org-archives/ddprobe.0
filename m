Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BD34688
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 02:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0qLedtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA329C433C7
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 02:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696992428;
	bh=kkKnOkYYkqRtaFPHW9Q5x79JZXu3l4GE6G462HHJJq0=;
	h=To:Subject:From:Date:From;
	b=m0qLedtQ17aKOLLqi1/PtuvWziUo5G2f33d2iZbLKUO9avaDCp6wrl2kVl5DCKFpM
	 xMmdG1Hhd31b/nA4ohWMNx/IR9nZd3AKIfhVStVDYgh8GoMg9w0GYBqHzKVrzYr/vR
	 S1IzdT61/jW2iU3ZDn3OUAPkOUEyD3pB7ayGzMJQFpeiKrdcBbvFWOgZhaECci3zJg
	 mTMsU185EFV/w3ie+mkuo2xfXs7QGKc31Sn/X5mh36SLNno3KrFtjV4Rp9A7SwJHHo
	 r8APpuNxZfruQe2SIr9s1IFZ2Y0rk+GY2k0aglbI1vHvSBYYBP7u6HfxU136KkA9IF
	 kDOBIi7MBjbIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF910CD98E7
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 02:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169699242870.26437.3699649350126815664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add24eef7c07116f093f1c7deb8f9ebcc76837a6ae10b3d8c2121f0e630eb2ca
Date: Wed, 11 Oct 2023 02:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696992428
