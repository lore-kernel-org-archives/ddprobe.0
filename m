Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC6B1FA8
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A98C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672383687;
	bh=E1X5t2M8lPfGdLlvubT9UGYICqVC1y5ZOXhSO4KP2r4=;
	h=To:Subject:From:Date:From;
	b=KplBuoBQ+bXDf2LKfTLr3jZb4hMbhJgwNqAK/fmliN/X4MAzp9cDEIcPekE0If2XI
	 3hK8PC5z+enfxFoeEdgz0gh2xb1eFWAfZ/4RLe13juo0+4SOCLNQMZKtZRUtU0xPcY
	 pOvwOEMvMau+rf+WAdOxI+zPr2G93luB2PWs2wmDlYj8LfKGqsRScXog7lNNtox7fi
	 Iw+sKUcjQTMGfPFe0JZU8pQlwrdBfEp7aWMRzu7pSKpLLPWDE+geyoJfu6VeqLM+8A
	 4k6F31vT/NBqgEOUa5PJOlbqYgqJ/LbCOH5VWQYlxIa2/OYUU+DDvVrKE+n+xiLBag
	 IGe6SnD5GP67A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D7BEC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238368737.22905.13830378800475448091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46ec910dc7c81c6758999dd13d5871e82810df5a80958ae4c50e11b0a834f77c
Date: Fri, 30 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672383687
