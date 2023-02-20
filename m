Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54493882E
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 21:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08921C4339B
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 21:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676928546;
	bh=DlCGfzfmR2rfyoUM4DB2uKLieK5CkQAZVEHM2Lg0BRE=;
	h=To:Subject:From:Date:From;
	b=IB4YMKnZq2tlLXEkO1FfAhMHxOJz/mCMp3JQRqCFyrxhCOzHftkG5qJXc8DnFHDJK
	 BaE3R7fEZgXNZqOWnd6bSJ4bXodZMhvd8Om6keZmd6TxvDTtAvO2w98D1fiZzcmbeS
	 /Rrid6LniqhTrvpvLWw27DRYO0pF639iXlutW5Im5FiN1S+PEYMIX+Gzvt+YkEXW0z
	 6S4mywYWoR2iXWhevsdkfe8ynenR0Okb45kVrim9CZELG3CzNhQFlZDIt4BW/LFb82
	 1E3tEootMvKizDSOZQiDtdFYYJuWu9OFDlXyFXD99IqVO+FrIb8BtsFIiV37fuKYL7
	 bHopqm5VrxPHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF795C61DA3
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 21:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167692854590.25866.10289008178686982797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66137e8b9e829a6abd51aca15f60be18c417a622a3bc413a865b3499eab9a7b8
Date: Mon, 20 Feb 2023 21:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676928545
