Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9C31E501
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 23:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F31C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 23:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689897128;
	bh=IwwxJMMAf61+5egOFziYSDqALu2GuGScPTTeZYrx0u8=;
	h=To:Subject:From:Date:From;
	b=IW5lH+QG6Ro7uPN7YUXeSOq1CchWv3RMuShNuqfLpNTnXaiOqnwrRMaRM2tptfZ61
	 gkptYMsNNjHQNVpNs+7dwerhC4I8iQwicZMOwC2ZJsiALakVsMrv+mJBtRIv1wbgtq
	 K0S4fbAw2/Atczc3/zzLLCxgtnNNh41XaxDT551ceJJinrO27Ck/SJw5UaTGt5jVNJ
	 vM8VKqYOLDUJr3Ghj+6uRpG5urRxnl6f6FkZTlCmsyU1qFyMCantl0Dqaqisc2vd9+
	 BGfjEISr+wSl6mi2KEsifZ+Lefz3o3MIOuLI3NbDLNBSH0cd8iscdcuOlSt7M6m9MZ
	 U3gpeVYSf4nyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2CEEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 23:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168989712870.4917.14765427872538861597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eefe6aeaee238d5d7437531d3de174f0b56d310f016bff09268d83d47407ae7
Date: Thu, 20 Jul 2023 23:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689897128
