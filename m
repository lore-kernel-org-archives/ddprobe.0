Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6059EC8CF
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 07:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+g1jVKj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF62AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 07:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696922828;
	bh=k30Qat2vzLckxfGmowCtubC1PaeI4uw5RZlIJJQ9At8=;
	h=To:Subject:From:Date:From;
	b=a+g1jVKjuWzu362isbxHzEyEurgbWTisq+vY+hFQ0ziP0dvb6cYUA3b/bTHiTBSda
	 ruO4GcVLpePLxNSg74uFN/3ji1I+nf67LwQz8PxJMeiOej6JEv29nZxzE37SKQ9g6b
	 Mt3s9p4PaDAFgubnO8KpHEXXI3iZBJ9rcdSxywwr9e7nvzSuQTv2cW0OgmzObSSRks
	 4iA/uc2q3FwVfR90zLH/LQFq88CvmMF1z1Mh5DZNb3SbK7ff7hh0RwHLiBYxvNKI89
	 JC5ReklqVAYTSp/wZrnu0dZoC4HQ7Im/7LnkUD0vY1sGxZvKDNQgzob3NFVB/JiCrR
	 4s3JmCzUsNa+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37C2CD68F5
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 07:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169692282866.21568.11329303246508677841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446a6dc817a8c70d93ac421c0c3c5f097adf7de2cb81ea6734b769914b290cfe
Date: Tue, 10 Oct 2023 07:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696922828
