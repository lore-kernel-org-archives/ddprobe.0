Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEA51DE2DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745872796; cv=none; b=M3Q/25b5OGJT6EpKXW01q8VxZLT+t/JL4qQI8I00s6iFpReLPYxvEWsHGZ5FmFJLXdA42uYCi8c0nBVpZnlUS7DtCAn3IG6hJ/lj4pnOw9mUOD/46ieWfVStc6xf5E2de8Q2PfzTx8y/1kdPeFN4wUMcvTti+ZMrfQGTm4xN3WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745872796; c=relaxed/simple;
	bh=YXh4LXuO4qX+vQD+Wq6oXXNwaW97muyBmdM1LFTVry0=;
	h=To:Subject:From:Message-Id:Date; b=iw/Zjo+ZV1r0pLHUSdG74i3ltAzhSOjkgvrGwhr8lRU4oOKjEJ5gQJTn32ryyQ3nYNcvUSaNflntv9qNn08a7tNV3tiMcn4mpnpy4bPcI+gABNSnUZPOHi9fSzsIQA8kfuXxArkfbiry7nzibPJFYClZk7RxKn3LRpSqbVqJwm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwK3Edmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwK3Edmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12EAC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745872793;
	bh=YXh4LXuO4qX+vQD+Wq6oXXNwaW97muyBmdM1LFTVry0=;
	h=To:Subject:From:Date:From;
	b=KwK3EdmjX8vUVpO7PaUWYm1eaVdF9P7Ba/sA/8YKRju2GKdvRN+ldhMO21lvJgHaU
	 ntfD4HDq/0imvjbuAet/G0+zarrNSKppUS/jHT7cqed26I18M/Sq7qmLCy5beVA7zT
	 SH768xc27z3dA43PxwB1Z9HyCTcuapfPBXRL0SFqU75kdO6XIQ8MoBV4QDCDgOQuuY
	 GHXyJtZ6OFsZbp27sS+6DQxCi2L8X9nfJgxGjuyw/YNaB+mKWbZCBDaQ8XhMyttji6
	 4n/yKGWA9a6w9EAKUySyhNxklTOdrrbYi5UAdYVYXAoGE89tE8l+nOsE9A+b+pSAgj
	 i1LweIifwR6tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA6C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587279357.7192.13824327025157198443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a94e475f129d43fe18b3032cc1299509a7c5bb18c534a660ba5255eba32e98
Date: Mon, 28 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745872793
