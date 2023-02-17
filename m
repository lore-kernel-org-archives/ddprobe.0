Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC22946A
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 21:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BBEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 21:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676669105;
	bh=4lDA9sW0mZWcu6P/dUdoeUJOs5hl7CikXgr0+sphgac=;
	h=To:Subject:From:Date:From;
	b=q5lPAewkzdWs4C2ekF00gG3uCTT6VU4pFQtEiEOsY8zJWJ2HVR7dtrgqB4lrYmSD4
	 tk7gOe90Gk7IkUGsRjXeLA2lb0VFfE6U+W0CSL8aU67ixVp91r7Ljvm6XFTxJNOyr3
	 rFd+VoxwBhX41NkY1+lhVG1TFEDz63lpBVTEKdwvDH/1A2G3YsxeWyHN3tlxgVtFx7
	 SIMxEuBBhTbaTJikTwzycKJJW04ukuh45u4cLztaq6qwQd6F+yk3xgLHJTCJ5zB8E9
	 anx+FatRHtA/+ZsTR7I2wExUkhEZx603Y3aLx0YGK9rR2PtuQjbPuOoHvRl1N0AXrN
	 lnlEA1v5U0InQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67E1C05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 21:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167666910573.21826.11611009683601722127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed1712ae0a8202c8d0c397eb933a915d36e5b1f897e4d4bb76e566aa9ed1ae0
Date: Fri, 17 Feb 2023 21:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676669105
