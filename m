Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557EA8466
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 19:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0765C433C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 19:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691953988;
	bh=kDeFG3Fvf+JWIEAsMOywsWPBfbKnmtO6m1SAT4LfDFQ=;
	h=To:Subject:From:Date:From;
	b=A+jB0cAAs4L0Qonn48M65K2+E+QUxBKerwTDYXdDAD2xkO9rZ9n0Zjpqt06cFLuQh
	 NxOpiy6T3+4ZNT+82SoOMJ/0QlqjUF+/9Cc5n5ULSO0PQN7fcdJsOBjcFX174oC6Sd
	 YJgdTZ5D2SOpNHHiuN1k1QPp+OsMdquntMuHd7TozRl8bTMdvOeuVJw++W9Wfsr7am
	 iv52gddLkcsSzryCPJccRieRrpI9ffaEpd+A9CRB2HZLRMjLDVrfLwC4zAt3QhYDW+
	 fK9m3/JtYuGrucJ5U+fNDun+W1ShvWSxlowfWWlwP6X2t8QQ3f80eyUQbNW9ohLiJ9
	 cD+jSDugF+lEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52C4C001DE
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 19:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169195398866.26179.17678083719188491827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079cdb28ad363af8338657797d3c3b1adcf3e5c24472f3ba04ba0759201b4dba
Date: Sun, 13 Aug 2023 19:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691953988
