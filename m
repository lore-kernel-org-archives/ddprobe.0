Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8FD3211
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75856C433D7
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664662253;
	bh=beyIGhgFSub2Rna9Z9KVieJ1hqko9oLZHL3bWalwJaw=;
	h=To:Subject:From:Date:From;
	b=HqE3cjAwbq1pC3fFCZTmIjJyeDKWioIiuT0qnQbPIQ0ANKUaBAJEUq/rQQZZVmsgu
	 ix5valvWsizLFwOU2d7BA4BmH+TvhHjNsyN4eMcI9mYIrHXFK4u/2d9l1heHkmP44p
	 DFRh8p14gfC7m7JOq8oRNLdwPw9TisstPFRxB/RAGgJyWPO1J4q5Dr4bOj5GTXi4QU
	 NhMG89wqoBCDKus3CdLGthLiRbNWwRW/aHoYJ26BsOAjCHv1LSzkbEFo71Lb1p2moI
	 c1uOjHhOQz0zQEeUwTU97iz51MKTKeXlOaupr3+++vMGdNnABGkBAqqqfttqZQXqlQ
	 ycs3okq4mXkBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF54C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166466225335.11069.2210069667466112070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ebb87e062f2559a3bdaf9304dcebc49e2354c31a6de152176444ea8a7aba0d7
Date: Sat, 01 Oct 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664662253
