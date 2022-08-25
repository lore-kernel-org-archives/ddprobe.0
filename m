Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C417B
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 712BEC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661402452;
	bh=lRevmUocmU9+p9CwI/jK2eVei550U8wEyCAciF6Plh8=;
	h=To:Subject:From:Date:From;
	b=Kow+xS1PHverPFPvFQQsJVYKR+gcXzd2s3tNJm5TzR2ZjPWAQTAt6huEJ4Lgrott5
	 Pf2qKTUvHeNaVyg6KkFiVyNQvkbvSFZFu23GaEYdLFQM+6IMHDGpkRWo0ewKrpUiYp
	 v7M+4PPyKwrtxqRtXlHOC2sd2Ex+8fjtvq1hRytHk912SIX7f91XxKG6R1oqo1HMrm
	 yIxzBTy+vHgkc4FOwWAzXX1KDF2soWnZQGV2VLCck3k5LPSMs2aPfOOYtpTCkBGxJC
	 K1TcmLmvuM11NOPX+lTtua78AUTHDSEQ8lfqLDirbfsqq6Yg1v73JPWJO0aYY3nwOK
	 v4nqbqAXnMiGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 579F1C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166140245235.8619.14843221650079766511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e509a77b5dc77e95dd3861ba0dec6a7b75d2ee311a2d449a445f3723b01631
Date: Thu, 25 Aug 2022 04:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661402452
