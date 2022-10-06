Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD8424681
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68627C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665077453;
	bh=RcHdeZEFynv36v3lzBbyJS4uR5nems7Q+r/sP7/B3OI=;
	h=To:Subject:From:Date:From;
	b=L27rGF2TbzIs3u3iz0XO4nCimuWYKSBudFFRN/QDV2zla0mPdpJFsPhyDH8KrwKYF
	 BGmLlPNqvfYRnBFn7x6XqPx1WrnWllZN3AWj5jFXm7NIHx1b/8Hf9Oedmp/pj7ti47
	 CcyOVLdJ1x/JgjAFYgM4cqrm0MIhnXZt9QQKM0HmnNIO9mBoRp04qB5K5kAuFkuRdL
	 DI18suno+OwG252TQpMr8QAEdjD2YxpfuaCU9wZgtvt8iM7nI0mc04YICvb8jbxljD
	 SwwSRCuVBBNrlzabREFaQ8IthwKZBwI2doJtAaLbaKRKoB+mtjiFCvciSfkLIbDI45
	 a3ZuarfLb/3Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514CEC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166507745332.17130.4751080214829599287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70344262263f59fb88e397b838bd9f66125a5be86be3e29a64e31592501b4451
Date: Thu, 06 Oct 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665077453
