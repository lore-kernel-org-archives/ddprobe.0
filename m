Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9C6652
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 18:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1ADFC433C7
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 18:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690223528;
	bh=Fhq6XW6xZbrCuzeXPOrXMChrWIZm4cW+sImTFvb5YLU=;
	h=To:Subject:From:Date:From;
	b=duq/M5xwQwn4BATH9J5eGAlLaZsvkegUjrDVLIS54H7gtQfrgaIo16XtZkxXJGZnk
	 EtWxH3apVVRBj2bo5jGTcMDKotTrZaXDXcj1CftA1atD/SRCehCBiWzLJq2su/hS0/
	 aauAUxeqHg/cvNk7lEnOWscOHXZwf9eqW4zqHbEBySMpTyFpCE2S1io9HQEHujbosg
	 0LqEkpRKd/Nb43i6mjV/5Yb9uDaumCER+FpB1UPXkngVoGhd2kx2jKLknRonPTcnRI
	 lu+aE+dCufFEJvGje2f3Y017e1wGsEYOi2cB+8s3r4HDPfKWLrLGOboIleWcvc+f26
	 iRIftquD+Evkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE88EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 18:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169022352870.1477.10431256629289183441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e040a4f5ad07f070a212a8a21fa126a08d6dfa017089e75795b7eb99f6a66080
Date: Mon, 24 Jul 2023 18:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690223528
