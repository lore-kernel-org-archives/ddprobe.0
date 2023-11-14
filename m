Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03AE441A82
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmVbm28M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF61C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699977496;
	bh=Tf1UkAd8GoN/SXJcXcWUvKfvux8O10qyaDmaAEzVB8I=;
	h=To:Subject:From:Date:From;
	b=UmVbm28MGY2ZH47gOYps7jO6Hd60NdQyWWybWJNq+JBdqDq9abuO4kX8ZkbbyymwN
	 NpyWUKKDqykKj/ptJz/cgHH1AsEzrnPLoi6dVvy5kZXvD9kpKsFzlBLRjMosHsg+1O
	 FfK0Zz9B18eihNevkXYXtvNaLd6u4fhtFl+Txqd/gATdNIAmnYmg8XA4Ne4pbz68th
	 zLIwxgNNoP2KpW6Fjhc+rlphkCz4aHj+D7yiO6sH/gC+rhP4sdM4H7lSZxOP20j8F0
	 s3/3qcBLYpiqOw/uTm5c7nGRwpyOLXf7+4aJFD6poIS1ZAw3eqRjmKfOoMPc9kGAEs
	 IX2GWSJ6qHY4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69563C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169997749642.3875.8961411364078390258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 834fdc7ca85c043b77f503997eece0af482c493d2ca75a537fe3231e824d34c3
Date: Tue, 14 Nov 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699977496
