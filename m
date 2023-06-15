Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B7D7ED
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 04:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECBCC433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 04:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686803828;
	bh=nBfF6TsohxwuEtkwqc631v53xUBA7ibZtKguiX6HHn0=;
	h=To:Subject:From:Date:From;
	b=B7neQob29Yx2pgBjBIB4TDtn/pZilGVh/8rzruPPZ5Scnzr9sWBtu96Xf6oaUOYEE
	 xTeWu30GjfUUTjIMf07/6dVj7AskGUOluh6+yIC7B+Aev73h4Au3bmAYGhc403AKqb
	 AL3ou/sGbmY5aYdT99wN8tjDGsRyenT8LjSyaNwwfix57EHPPCsT74nvvziP0O9bE/
	 Ab/7QsSONHRQTrZvf1N1IiQQE7RT++codrWuH4Cs16NZ12XVEbTmi7PD+DZYXMAvUP
	 2YDLuPqJGYWPPphRCKuG/7gujJm1EE+r1GfmcgK+eX54sTprnNfb0eYwYbkd52cuKp
	 0Wkh5XvTa6j1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE79EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 04:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168680382869.20723.9455906028037233811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21950a026e679a3083ce9ba4ad0cf2c9bb9fcb671c173f4bc88800c440f7acf6
Date: Thu, 15 Jun 2023 04:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686803828
