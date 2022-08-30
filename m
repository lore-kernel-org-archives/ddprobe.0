Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43A6399
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC87C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661877653;
	bh=le/0rjxiAuIRipXBSNva5vCTL1zOzSvwjummARa5Xag=;
	h=To:Subject:From:Date:From;
	b=Ghqg1ammLAkvW0ARipnIFz63xUfVQWwVAi8/gPn8k+6Y5wx0X5sUCi+lVWM642pCJ
	 S5BB9GkvsorcTl8z3+mZ6v88QJWszp0exw7wpYSuCeTsLrskN7tMZ9L60FkxBPoLTj
	 5dsBAUv3Mm1kmnEy4a4AozHFJfZvdiWDwgPQjpQgGLMtBb7x6S7FjbnKxMId5CRTCx
	 WIE7joBTFMRv7T0jdfatOTLxP1foYHGw4n+u71f6ivnX1BmFbytr7aSK4E+HzN8SZ0
	 YnYmEdbC+XO0n1ah/XZab2rAdhVgVmyuHmcQbM1znnldhTf3abaAvQI8LNVP9ubGmJ
	 CNqSUMf9l8+bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59884ECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166187765335.11725.15403299750496528605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b7b4125d6bfa87ca24d9bb10c2b96dedbc345bae107467ed2b9ad6a3df4dfd
Date: Tue, 30 Aug 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661877653
