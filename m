Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC59017EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 973CBC433B3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673427687;
	bh=b4ku6PtOHsLTzKAIhRuFR2hXwwXNy/zzAhniE5oR2Ks=;
	h=To:Subject:From:Date:From;
	b=ISB4DqB8sn+fL3N/SFHJkOP/GYktnD6I7Oar0YNzwv+LHUMvOW96iqN5zZ58HMwTX
	 D/r+Oxb6aSdxYQavbJTikgn/fFj+hcJw01hLv737fX+hJqzIaLktYUxeQujrWjOWGg
	 0MSugCtgUP7lhQuZ5+Ll+WwU54U9+HV1gjVA6xGOcOYEru14qpP0Di44zLVjvLjPcC
	 x3zdCHPpL0WIfYw3wy08nYG5uv42TiP3kMAjaARdSxD5U2lSd74EiiutgD0E4/Rf3A
	 5W3zkYTEB+ixpctsQs6JhuZktS9x5sCR+AXd3Ee61PzOLVwk7cY/kW3rfTRHM5x1AQ
	 bY2HdP6Jkieaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BD67C54EBE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167342768749.17342.10704525602842885545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a9a9224f567e417fbbdca246df8485233e6a61a8ae51a2d7bb48897e535a16
Date: Wed, 11 Jan 2023 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673427687
