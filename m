Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA831363
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706F4C433B5
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666593053;
	bh=2iC0nPVCfomWkNeOY6dlQD+zC63aTsuUkxYD3t2NUAc=;
	h=To:Subject:From:Date:From;
	b=O2Hfj+3P47uheV0ymZOqwhe9JWFGNzjOuwGk2k0YVpjpo4t5dnWTOzdnzg5bk+4mr
	 80c8U2SMmpKRMtfWJ4vyeIiDNFpksNO73vWqzHtbykm2BiJNxR8prwXe7GDdka+Rkv
	 sNCe3oBgzpGFgLHFYqnTeli7cq1RJdZahn6FpOzpIrZyx2Ru5hn7w/p76wXl3jKulf
	 fco4zH/mXEBON2q1XGg6JBl1wyTxvoqKmrVLMrB7yaEB+pWawFxiMIJDnKUTdILQkg
	 LuROZzdYvGiLvUZ26kJ0e0VIESh90PazwwVKnKGwTAdjnJbr/HL1KT5y2r7Uf2WBah
	 kkYhp9V0gJNtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58D9AFA373D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166659305335.5115.8566946987205488891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd30cdd32d18c34d165528554a68f24daeeaf5e08ed60bcb186d2e6da5f7eff0
Date: Mon, 24 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666593053
