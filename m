Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B931C29B2
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C943C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668766254;
	bh=C5eyTmTPfvhDE3YM2OSE0rH3spQpg9ZJcv/N2c2dp6M=;
	h=To:Subject:From:Date:From;
	b=jyD/NemxxFSlPmcJuCAiiQLKDssbWAlJrptKytLv4GleRHaA7Yps67jxIhJlWdlGY
	 eEqCOdomnlU4cYFF/xZgqK2U2RJAxD3ZavhalwzjNrfrBt+zM0R0Ax0/7ZusTxwmha
	 z8oH0Wxa0D3G9KneKoOhbYSehbvs5/EQw0fjjMH3medaSDdF1c2bptuyG1rnE97mUT
	 xDUO/VofA/SMUPAiAYrdYiNaEZt6yYbuGBGsWtGxW0WkOuRuVQ+ez2BLYSCA72HJBr
	 uU/iQ/NGFzSUSkkGZnEI0huzl+FMPQAv345SQ8oFPTh4SP/YFHT7ey4aHTy0xNPhb/
	 kEkDOswk577Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57408C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166876625435.8935.5035688632767720102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59bd2fdc1a7de4acd276c78d9aaf1c016d7fa5abc8212da45e6130a6f78c9962
Date: Fri, 18 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668766254
