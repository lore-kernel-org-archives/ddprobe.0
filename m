Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFB6161
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 00:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2430C433D2
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 00:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684714985;
	bh=/IGXZ3nc1zALzS/k1FZFeUq6plJ5QvZ2lz1uMIl5URA=;
	h=To:Subject:From:Date:From;
	b=fTrBcW952eGaCkM3B2AIWQ8Luy1HCK/iSz9YvL71YI5i8dd1VvsnrkWHMDCE+7rc/
	 ZD+BrAle9DJoznMdSY6vcOInzd5X3J8LLiYgM4ajKDsMbI+dUE59dDLcrRca0xfG2s
	 r699TmiBNPR65/OrtCxTbbr1+ETG6clFiT5Y++wB2H25nP0zvpiSdtq924QqK2WxEO
	 hEqLvUzUpHdh2mK+DT1pSoqpBEidXCOFJeF04DkGF2EIuqG/DNnruf3nkVdt4KTZud
	 aTVQkpBhYbgsOyIUqY6La6Ca4SLffoNrxe+YhaG+37GKzdViO3fuNLTJ6GV5+uLq5T
	 m+VRcvc8dLWQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B0CC77B73
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 00:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168471498577.1899.7240097726032307475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad992519cc39ab7442b6083cfaad917c60fa917e712b881e71f53370edd8271
Date: Mon, 22 May 2023 00:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684714985
