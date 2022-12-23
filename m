Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D198476
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82FB2C43392
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671801687;
	bh=fG04DjYVQyZTRVM2xXuSx2akaGQsbwFY4SWrUAr5i7Y=;
	h=To:Subject:From:Date:From;
	b=HxqHc6j05KywUrG3dVHYzHi2+IxxTs3lma34O5c7t9ynuCZ2woM1b6oZAgE9NBAAo
	 4SN/4oLsIgR62Ki1cDIA0PeZrQnijcop5+W4wHBRtWNB49cW9RDFDcvmXL1iPzJ1Ni
	 knZVCKnhnNteR9b6FgfS8nWVrM2d80js/BID2Rb5lOmFRSslQVApM4HfsyVyyifG00
	 Nu7owOWeBmrd1ICWMa+y+aeKSNo5EQjIBll1sHtFNZKHTQAe3+iBUY98LMQd/W7p7A
	 wZb7m8396/grNzbpgBm6AJWIq8s+f3rliCLQG9oQlZszpSCgSSh1RfJG7KWy7+cDC8
	 GZ3B/ElN9kAzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605A5C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167180168738.30228.11470651177388890145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a2b9df53e872991a2ada7a535438b27de59339e99ab29295c37869edee4ac5
Date: Fri, 23 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671801687
