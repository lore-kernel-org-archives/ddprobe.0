Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD98653
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72932C433B5
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665888053;
	bh=g+sxmgS3B9NmcIPMlYvfZyfVH89CxnM76FlgVZKpbac=;
	h=To:Subject:From:Date:From;
	b=RSJ11WXqDeowRgqLVZZJvNA7XNr1NpbiEpHzKyMB0wXVYvuqqMu8FmKHsVyQ+okww
	 eeSsYdb0BCfFWNdDky4dpHed8AZYnZ64BD4wNlZsTM9O28XSf8tON2udB6dcovvAZB
	 QRhBToYQVNFqCEKXnA1ug4GSdwHvlNCvA4otHlxKgohIApdapZDBcmi7YDGsVVRcY0
	 acEooLaUZjkKxO0yFyi/Sxn52DH+i0Jrqu4Mgfybeq0H31tqigqVKw+wdXih+LIiZB
	 7i6WxEEUy6oQykF7yfsnKK1r1iDoY+zVWPCheYCW8HiJN8itiZM7yGoaQ8cn40J2bP
	 pUu70YOrKZAlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 573FDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588805332.9714.207512869210899608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04cec72eeb5fceb4dc55f133a195ed9d221ebef05be8da772e3253a1cfacfcd
Date: Sun, 16 Oct 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665888053
