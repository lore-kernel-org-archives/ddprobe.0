Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492E8259B
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 19:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ai/IA69O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF4EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 19:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697396828;
	bh=hfBB7onSwsY7g59zCWNFe4DLJYF/dUJRQFSaAKHttkw=;
	h=To:Subject:From:Date:From;
	b=ai/IA69Oh3ggKIsUyV+Y/DeO32qkSrRna3370BoYLwC2oSvpJGFRKNlTUvUR6HXfI
	 3jI2LtFqeyg575frdZ/+0K1D5yysUuN9Du/MlBrjF6y2SX+DPvD6Gi4Ya38mY1++yV
	 PN1NriEut4al0pWQO2PeiXMCjzBPNYKMBuh2JQcnpgct9BIKjU3r5p1/w+qQkqxg6e
	 ORodUCsoOHAR1vAN3uXJ62ji7MDzAhbYSbWSRX0sZNIt1cH5hr3EJjNjiTezuhwXwV
	 /5es25WrkLm8Cr5GB0umOXW+d4PohpT864dY+RxrEhte4Jr0hXSh0E0Dxbvf8JZM79
	 GhJ4Wo6QnvkfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E50CDB482
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 19:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169739682867.24556.8902568392949818007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 587ce99a1bff531fb366e959f78bd42665a33fe6ce712994fb78d71dcf36217b
Date: Sun, 15 Oct 2023 19:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697396828
