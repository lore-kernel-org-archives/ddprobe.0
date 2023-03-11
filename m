Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FF87B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 07:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAE7C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 07:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678518305;
	bh=EbHv3CUISEG3n7DbS7Oxsbz8zNgcB4EGS9WQsPzozaQ=;
	h=To:Subject:From:Date:From;
	b=fbr2NqdvEgGKlFu51Rd63VcIFM1shJzYLG+loRBCZBrPSMXgPNxXRjnRTYGpvS/qH
	 FidEQrQNCur1jL/09DvN7RKkG+xSP6raa6/4NnaKH+Qsq2qWPsqAHQt7hfAZlv3B2G
	 vTww+w64PahwyvHDWCBVFFO1HXBs1DOvNxdbQgkCkg02tynOzG2s+Ve6Z2oaDH51oh
	 AY26UpC/a8OmmSUs6/37TBOBc/OpHZPnMFdpiZCuXpnAOBM8iCHQBLO+TWYcwPSWAe
	 HNIIGFA7Id+WyO/w3SwFIdoEkMfWd5eKO0IwL5aYLLceG3dC1GNLLvwfGk/pJHqX/F
	 ucJCjhiNM2+7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B37C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 07:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167851830574.20130.2724244326696597037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 977a482f2cc285e0d7bf344a61fb9cbeb2c551eae466a8f163b09f41f7ebccf5
Date: Sat, 11 Mar 2023 07:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678518305
