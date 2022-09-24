Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C888F8F7E
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F5E1C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664058653;
	bh=aeGv37evoeXvVTaimGy7p65xAhDspqEAdCdCAvpQ3yA=;
	h=To:Subject:From:Date:From;
	b=SOrDzqB6tcwEP07a/cEmAGSnTJfnqtMi/Bt6spvJjBSR2LaWwBqLo/d0hYsvtyNW5
	 XAM/hUG9qJM2SJknBCTkRWRP0Zuxm5P3bKE8EVoFU/FkUjm36gPXseFNFNeU6kMwzl
	 JaCwYAONKM36AZJUdQZzb2O3t/zuYGHdF0+LJWG12+rkbqV0ue06PF4lnmYBwc7v2D
	 oiYp4cS7ORymh4OmsRT4NIH8Av1/7jfMvT6378sKyxde6h7LCiVp6W0P8xD30U/IQM
	 u7rpDs/62Av35kSIGzM0PzJlvbdZXWWlfHvxPLWEgngMMCaJ9lJHplCDMF80DnHM/S
	 +5Qkc4DzB4q4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542F3C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166405865331.28357.11171572343254073034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c204fdfa39a9a7aaa40cf859ad37c580135e34408103c64002361d0d56fcd3
Date: Sat, 24 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664058653
