Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5815CC2FF
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 17:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35F6C433C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 17:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692034388;
	bh=rwmqzCaZgBEV9+o0AifCnYtpSsFZT8vnIhg2TIjUKQc=;
	h=To:Subject:From:Date:From;
	b=oA8jWEQMIL5T8MPoLW9qOEHcScJCbuIzzrKpVTKOUiAicEge9sga6G4q/eAV7YzYI
	 uRwqkY1Dwvk/c4fZHOa08oN4DTtBepD0AKVkEVgCRezbEu39l7B/QqhhBJ2eBVf2Re
	 kZ92tDCLB2UxEif1azO0O8ofr4fV2sHKdhHivNq3vbD/FC4htZ/fQuTcKjR6OT54Da
	 orQeiLgpPO1LKhXelHOo4OZzq/7EUadMz6ENTXPTTCcMaeTzBLaSZcL4aW9rBSYsJm
	 zrm2+J1Fbu/uBoZ5YiS3nA0LFzN3W1VWDmmX+Ep+BbPaA7ag/AQKYo+N9kAvYVghn2
	 k+LucgbCZHcqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AC5EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 17:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169203438867.19478.1313724036148380343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f541e47ec19079bd512f630e41904632537ef3e37ce2b4060114be604487910
Date: Mon, 14 Aug 2023 17:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692034388
