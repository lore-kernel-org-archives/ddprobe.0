Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA632592
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 20:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51E1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 20:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689453068;
	bh=dITZWg2ieTPiYz4vMQmvAy4LHObtsMHpnjypw3gYnvw=;
	h=To:Subject:From:Date:From;
	b=pvhNDTPiyRbU+jLR+hJqTPdN6f9tTppmJm7/jJw59hmPvlLRpiA0OqkEMfNRTgffa
	 +lryy2nigFaQ2JX/TsAlmeOA7yhry2cWzwCe8y9QtpHGG42XSSDpHUIzz+rbVyWhb5
	 W9heEEy0l+6I40T7gLebLasRqfjAaEOkupYMFhd3XkY8FK2H67TW14tkTc7hynz+Uh
	 8yIiGQh/lefSGOgwYsLpTFRS6YmVS83+5OThIzGY66CU5y6dV8Mu4jVlxo6CUTQJv9
	 QEjrsQ/BXewqsdlQtciIxiZaqR7Zck+U9hge63LS7y8QWGOAc2qsk5kjPXe2bGtPHu
	 1laq0Fe99Ka1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDC1C0015E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 20:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168945306868.6104.2773033935232404251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70094a31092cd9d46c18e1386e97b858a2177985a38c060043b1b28182bbd428
Date: Sat, 15 Jul 2023 20:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689453068
