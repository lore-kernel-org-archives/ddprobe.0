Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C38A28
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72880C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668343254;
	bh=EEz3qeTEx0Y1eToB2ODHROUS8lbpmd2MaB6OOlm2340=;
	h=To:Subject:From:Date:From;
	b=pKzl1iuu9nlbT/s++MfO0CCBw2mk/c3QBo7apeh4ga5LslhhCgotJZG5SXZ1iEURc
	 0bPsvZXhPRCnL1dFkAj1lROGuYBbrv6YJ0T4Tz+tudpXE9jtQ/Ms7/tGocCID02fct
	 vejsPBqDJXAHWIpt3kC/87g+iLlXvgr+hIKBo9hik2pGDTOBfJeZxgI6QofeaeY0wf
	 foMFO03P1xh79CVBhNmzpH+yuILEm9O+fQGsl5cpXeq3upThVlne/cZqZKgT/Bx0oA
	 8r6p9rmJXImFXTNscCmJzrRRuuDoZnYJnDCUoJCbxO9fdAvzDsaswWXSUsI9FaWFvh
	 1kr+sPmA8aL9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57953C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166834325435.16818.10559377132949386053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e87e762f7a50a9329ab314c775cb7836b47e682628ecec515138f6e58ae987a
Date: Sun, 13 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668343254
