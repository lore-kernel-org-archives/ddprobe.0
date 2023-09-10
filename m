Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA696FA5
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 15:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F65C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 15:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694360048;
	bh=F1oCE/5un92BdCAYxTiZ0hb2ctZtdENAs4TGRl87SrY=;
	h=To:Subject:From:Date:From;
	b=XLkBu1l5Ca9J33YzKKNGHCJR2s1ahytBdw8sJhmczQIY4zQXLrIk5mEukKduV08jU
	 CHp4NSujTa1om2Z4wSdexfXNtMe4ifi9Dr+E1GojSjUv4muOklQoDV8en7RuxLQA4c
	 +HRps0ucKvrHmdhKTqf8Q6v0XSMNhwNwx3wUmNaVQHs/YkAZxWyrGF8rrAnsJZnz+M
	 2r00iCOuFg87M8uN+zC6rEv5zHnM/EcOw7c9WlbaRCSzhMZ2SZIv/HeLVfwS6TUhdQ
	 ksrrpC/sfpIxVMcTeeInfwCLX6Nc/i7uJr2lh9hN9OAu9RnlVIfJC0sE0d35NMKIvp
	 oSo2C1DZY2Yew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3D5EEB57D
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 15:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169436004870.5812.9138285253368517425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25753fcb4adaf750f1f0a32964cb8e244fc1c15b5d6eecb04cdd10be2dc9d194
Date: Sun, 10 Sep 2023 15:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694360048
