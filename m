Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D400A2579
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75CB3C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665271253;
	bh=pc4s5XTYaJofmE76Fyz9d8ceVc+domCUoPheuVHNADk=;
	h=To:Subject:From:Date:From;
	b=e8L7MnTgEwzZOfDeVC1MAfrJQYC6Kb+4MEM8Ybeg5z+fSlZf1OTncPlNWbck6uxnD
	 kkjpNM0JG4V7ZE6LrAEQV+oZto5kGohgHQJpSorwbYupPuk5oSNsyRHiut/ItVtHf6
	 FZ4kzOuHBnU2DHWSiyLMZULDO4zS75U/50/v9lq+7hWhtE5LtLyM8BbEoMo0WD2djB
	 rAOW/AZxpkvQPCdUg8AkDdQAEAduZ+pq/P2ZkAR5UzWsUMMOvpXNuQ4inCZjx5zA2X
	 aLMneh+5KNRu5f42lIegu5vS/k10CbJzCak3T4wDrmSRSrzBurfEdX9rrA7ShKYW7K
	 uwC9frw3JaXbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C9D7C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166527125336.29696.6657697564107228320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81730d29dbcace3b794f341ee85b778e1bb432e0a7b756344cb0bb28a233e501
Date: Sat, 08 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665271253
