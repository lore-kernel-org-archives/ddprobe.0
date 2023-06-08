Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49205BA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 11:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF31C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 11:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686223385;
	bh=qOs+FWNNHqMfVA21L5ZWMNZKOzPztakx3nGsAG8gl8o=;
	h=To:Subject:From:Date:From;
	b=eFxEsVEq6lr3FId46IqAj+GETW7c3wRJrCff95RsI4LzBOE8aoofnkb4bwByoggR8
	 WsEkcHHuq2wEHNlrAVBYW73bUiS9XhieXbCjAme6xLlwBSWx6qgthABAKh0L8KTaey
	 z+W/1m7BYA00QmpNwWvIUdpC35Un6+YcymsDvfh8l+9y9nEuW3wibtZPeIAsrfNyB2
	 ws3yWXe93YPdJ8vz9Bf+kCaavzAPthAksAof144EBXPzRX0sfSmZScfpHmpL7y+2dC
	 jLa0vJ8InNXp8w9litLMdNIfbhXwQV5S9SToGUTxLzgdwr1zL6Rf4zaYBnvGG1zbYz
	 XtkMT9fD6RtVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B466EC7EE29
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 11:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168622338573.31503.5933258648319678095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47fc70390ee658b483b25e22718f5289a4c2dcae873e9b117e07a84e379e056
Date: Thu, 08 Jun 2023 11:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686223385
