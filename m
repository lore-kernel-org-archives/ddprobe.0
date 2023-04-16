Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576FF63CC
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC33FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681681626;
	bh=CwGu/EvndOrPqmb3ETs+g3YTg1mPyA4Rs/0YVK+r+Cg=;
	h=To:Subject:From:Date:From;
	b=XKevX+mY5ej6OF0Oay7Mmp1Gx7VON4gTG0rlx2BdfceylvGoM406hQnxJQC0g36wB
	 jTW6DTw7pf3EUlsV6fzXHoaxqDxwAcbnDlQL6/M98ElNs7QQMmUTpWrp7gzi1aoajN
	 tOdc2fxEUtwsIU/WAcGqVmvzi838wA12EZvlcKXabVSj9ErzyoonQZ1bVfiXks42w7
	 7/M2UeqbkHouqFEMVipvYqMHGrLhLLMG5AmYFY8ozkcYFyMuBKkA1X/Cur/JI1MBQz
	 hufyZsSf7qV9qpL3wR2XONw6G18HosSokZpJA5+eQ3rSgKdETrZeFoihHMsAoOuIhD
	 uFXzLFKTUg5ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8071C77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168168162577.22274.15462676202786844400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5850abd0da4ff91cc597138ac8a5a35a6c39f6a62e567f9d509128c4a204fde3
Date: Sun, 16 Apr 2023 21:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681681625
