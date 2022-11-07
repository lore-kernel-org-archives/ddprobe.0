Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AED843209
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6739CC433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667824854;
	bh=jL9tO9Tk6Q1Nmc+hZg3RaR41OWgNfNU078F4hsCb8nw=;
	h=To:Subject:From:Date:From;
	b=Gjip4el0mIzdzAuEiBR3x0SQAGPX2lTGlrAXRuDPbCXiWXkPHiI6tx8Mrls1SqdRd
	 sZT6yBRQNScIJGMJFTQzFZKG+StrH+SUQfFSqEY/ubzKAI2snOcBgvdDnSX9R+dIHo
	 nCpkMf0v7vqJ7bML735vcf4/sf+5JSQS2XTnAfsFtR3sXoNYF6OCzwrGR/82/fNyzF
	 p3TidyWG1LhCww3GxBV/JGctbT3m57R6YfIfaz4A6SSPejTe+9i3Feo2lpCdocM3JY
	 iq9cUgmcp0ET9ipPLl1nj+d02WKM0F5Rn8k+KaH4hcKMRQzMp05p6c7A3/M2cEI0TN
	 bSgtiTH6c/7sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F883C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166782485431.26974.1238896224839848187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d816ecb38e04616c3dd594951025b4558c0c0705d9ee18dd276f51dc23ecf94
Date: Mon, 07 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667824854
