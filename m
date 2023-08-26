Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F7429B0
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 22:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F25C433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 22:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693089848;
	bh=6xhhEAMZ5HgvoYygolrkoFd/aOuZ85GLAV9xX7YxbNY=;
	h=To:Subject:From:Date:From;
	b=jslZRGu8sPP32twabeuqfXWtd44IzYIKeeqnA59sBTnyBDyLy9F/G3dFCIaI2/qmM
	 QU+PmGtoZNDy+Z9cw+rfu0BhbNciAdcEcWGd8ge3h0NysY8NiN7IRF+RL13+rrEeVf
	 cGqS+vI4DnRlzjah7ZcXyln3T06KqHGkd8lBHGISOV3+ZalSca+ddebvQmfLsi1rLr
	 2tqqy7jAlh+oUGODBzJtzVAg+oAVGX1KPW9UUmIVaafeQohh+1ZEzFqzzBwCJ6tuyF
	 TbF1XpMMeLrHUWwgCDHRoHidw4PVPPLfAalUH/MCAyXR74/0TaUrKKjSH9jCqrEdao
	 AdW0sfYAsWdGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C470AC83F01
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 22:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169308984877.19512.7198055900570395246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25776eda7521fb88de5c97d98cec3c9c2e1df23bfc9c5dda752c25469f7ad7f
Date: Sat, 26 Aug 2023 22:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693089848
