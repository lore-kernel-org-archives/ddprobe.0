Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32FEBD04
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 889CBC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674179487;
	bh=Bjixa3KPLTthyl8E5ZCOPBcyWT0MUzgaTD4/Wmp2ukE=;
	h=To:Subject:From:Date:From;
	b=oQe8iiusiPY8/pqE2pMjFwUO+wGr1QNX+l82wf+y27C9DNNVdfWB4jg1V2xx535Il
	 K1hHpdrGXtnxwwOL5n5M7IQSlE0SFJhEpoP5gXx2pOtitiEUwGhR8yHmRhuF6Xn8fI
	 K4SzGtJqqEBt/89x3AStLWiWShlQcTBVvOKqSi6PtGqsWapM/TU1vrYBqtxCWDdAAf
	 m152fUhOFK11br3Mn8Rm+/xX10/HNiHEBqmq7BWFTpXz4F0O2ChLA5fbspEcFnkT5e
	 nMGT9ATqNMg/c9RqhbTbxHb+BAcCY7r7yjk63x5dm/X+bKsjosN4ar8XLLsUFkSgln
	 KEpCxojlAnSKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678F0C004D4
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167417948739.27903.8100559488489870011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1784cf3b2eac2cd164ba9b536573ccee572296b5add4766cb4f9e9522a61ea
Date: Fri, 20 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674179487
