Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF67017D0
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74080C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669524054;
	bh=sPrzN/KIBXaFhAygh1F1rHzAFaDa6fUPcuzUCwd3BMU=;
	h=To:Subject:From:Date:From;
	b=O3fvsbQvPrdgsuigtY0naFe4cZqI++YXEZv/BPRVY4aLQQdGIDll4SY3fqiUkaZp5
	 vz8JJt0M5jyE/6m0B4mT+1XdV/H2zdCyrJv3sTh1xo8tsl2gShDh0PlVacY8KlN3IK
	 9dR9jqlU6+FE38wEeQwlR2wPqUtjOoYot+wOdGPzoDHg5UtPYqM+w4tf9wcScXzwUj
	 MybvCIC5xs3N+G5yhYHCKPKO+sXsX/cLU4rx3oKi9sgEEG4rr1N2dCSaO5LyvERlCA
	 x8znJH0X+/RaXa94wyZGvoSKoc1hzMQqBOPnPELltCmS+KeeV4LQ0cgBgL0JDohbH8
	 hbi0CZvXh2Mow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5647EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166952405432.7964.5747453755554386784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0afc99f2347ecbe73aa03902656813abd94ba5b8df59416847303d543a4eb395
Date: Sun, 27 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669524054
