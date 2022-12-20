Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E965E184C
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FA9AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671520287;
	bh=TF0+FLfWcbHuWtjHSnr2JW2fLM8uNvD04+3ruV3RllE=;
	h=To:Subject:From:Date:From;
	b=t46wpeY3knODmhcdW4vqs72sn4b8ItmEdjHLX3C3+kH072BgCYQozoJlT0vrPks1Z
	 JI5Tup829zS4lGW/RTa2TmkDEd93GgXENhmBpAz/3mB3pK/BTNcdOYfhcLpR8jMP3G
	 NaZLOVUnexyJHGf8CEbPKsZ/+0ygG9lmIfGyPw+Ywj72/XXtVpC1LQMbn1nqe5EBmW
	 PhpbGjcZZ5h8fdzpVLonop5vPXU+VLXl/a0JvR3LqLXI4AwlD5JpoEJ9735i+GbAUA
	 +ysmLOLMKtYnjB1xebbY0eHLA3kn+W3MPhfVQUCKRckNRlJOX5fbs86ompdvST6uCT
	 dMPdIdrF+v3hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72F42C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152028743.21051.3311973854184857237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668b5debba5306cf5082baa70c950b8c91f9d679eec4c1e95aeaafa15266efa3
Date: Tue, 20 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671520287
