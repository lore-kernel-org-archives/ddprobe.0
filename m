Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514E710FA
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 04:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0615EC433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 04:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677729966;
	bh=7ok0gS3Jn632ZVxzlJCu3aZQnG9whXhKs1561y9NNnQ=;
	h=To:Subject:From:Date:From;
	b=rsIbrsxzd2Qi7Hf46SojJ+ew+qrpQkhwQxYfIpiNo55nB7Cg/hfnKYqPW5gURmbpT
	 i732DPE8ziJ4xx7gd4R3300V90YI3AymJBGj87v5wJeEpOeVvzsFUkY+HRBaEO/N2s
	 H66brOgOQ52vBAoyqxOyFUQDmTB+aj2lN5j16pKSu39QIF1/jd9cNerQQGEE3jrs5X
	 I5x+2KDo6IMuHjCBDkAEOIHhXwm0parLo4aUK8/JGwbG8FL4thCYoF9tLKoUD9BOtz
	 RebOkYzYso6mzBYjQLvf9WUsNhwTJCpmMRzTRPMs7bgGQNWJJVsvS+gUERbu6DQGj+
	 NgxsjlYe7w0nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DED16C678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 04:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167772996588.27739.12797304178752246375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594bf8ee8b1c58493b2ee6a64538536f63e7cbcb7672dd68f1508a50fed44729
Date: Thu, 02 Mar 2023 04:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677729965
