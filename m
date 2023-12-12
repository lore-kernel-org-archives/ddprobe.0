Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20775275D
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUpV+vfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD86C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702411696;
	bh=pSud4pULD4TdKIjVx0W/v6NS2/aCslQoE6N962+M0sA=;
	h=To:Subject:From:Date:From;
	b=jUpV+vfUz18TIdNjlWeXwDshzzIqtWxxabWZy3ow9z0aNu/0vPKCKU96q5rY0NLDy
	 4N/ipPu+fxkiYVesp0G+SJQAMOv0nw86x4dq0YSB14/o4UHbdY+Zo3TKbA5Q2JKPO8
	 7bWlFv/zb3MKuJDzbuXAVpiG/G4vzBmyRHOg9BbEZC/Mf301yWD+z4+CF4gWejGl51
	 d4otap+hfC2qVsQB8VtEP0CUvcbMOq3/32wbXEJcwNVgrwFkWjTHyMdaVi8kt95o1A
	 2synt0Ysf7kIK3gUSQYL+c0/oW+wU1Yh6PB32FebYn488bs0j0yubftfXcPTpJ13Yk
	 STocu4p3ZHQww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69212C4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170241169642.645.9850686613431548107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63755dea7d79cb7a2194715830932d55892346418aaee9b3898cd0b00d53e31
Date: Tue, 12 Dec 2023 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702411696
