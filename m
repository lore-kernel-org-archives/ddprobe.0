Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E34519C
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJxhTLJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 755A6C433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702428496;
	bh=2xqIlJoZjqwrHQIqP9TJoNeAVM+S/fuCFqULzc5jyfU=;
	h=To:Subject:From:Date:From;
	b=tJxhTLJ+HXfMpZHCgSMrnvTXAsNBPzxZTVzpx+VNFNuIB0XLGm4sPFJSTsF+wv538
	 6G8MijovF3ilC1SCtALa5PignwG74Cvgdab5KVoFH9fGGuoC7G9iPx/LSjJARR5/6z
	 PMaMdEE1lDHECYy2EMpPNYAAoAdbbkoXol6e1pOBl10zLlkSEKRRwddUC/5iVTDe4t
	 Oa4Xy2g6HTaa7YLVashn30/ed162zZbb5wW2uhOZh5DRGmXUo/djQoMahj7P7aoOa8
	 73eT6LFqGAjHzRjjB7/qBTIpE4FuI2Vs2aqSm07gT3W8kRQ2xUvp6h50bqOm9joLso
	 0XQDznuNsCQXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A7A4C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170242849636.7282.9133864234290102042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbccda65d4c19290eb90368fe244ec7b95404132bc2cc8056d605a637488ac83
Date: Wed, 13 Dec 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702428496
