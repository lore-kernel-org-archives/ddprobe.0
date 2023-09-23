Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C77647
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 04:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E216AC433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 04:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695444908;
	bh=3Pd2MzN5oP85FBqb2vqx29kamdgr42VyzqHHfzXdGD4=;
	h=To:Subject:From:Date:From;
	b=m7OiR7mo6mkYKu8nlKtNIsdssaExNIRgTwLiU/UKLNuWYeMKHjh6nMMDXb3s+iRoS
	 M6GK9f2RKqiqCuClOzPVx/kQlVa8Ho6zUtuXnRGW1r5zIvoLLwmn6lV6cC+74loam6
	 YLCPiThQiSLDsZdH7sUPLZ5JM60mgi0iju7VIREINGJpbniiz+qmbsg+tM8aF1O98L
	 x5RZj+L8GSASa/UDHSiBRog9bVW7DO7acWe+pUiqEFhCOgpWR4x2hq0F59R2jpwxzA
	 8X+u/7zFljSDF6Sj/xiPiNmmWNNhym2xLF6bLVnjzLgyorcjMDJR0du1x2hHv4w+Mj
	 IBHPxF66D0nGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38B9CE7A88
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 04:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169544490870.17433.3830951270566781197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472e24357a8d0aaf4bd83b95addbe2016df8717728d6ab51ce3461a011aa5a36
Date: Sat, 23 Sep 2023 04:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695444908
