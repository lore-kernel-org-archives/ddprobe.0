Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAEE7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D84C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662946853;
	bh=PLKO+UMhK+7y3IjGH34FUPdrppntWfrwmvUOyp16xwE=;
	h=To:Subject:From:Date:From;
	b=VE9u23EaA2Kxywe8c6MNGcnZQHvr93/ZOeW3/gM8Kd/MMvbTne4W5Wbf2/uOtPKe3
	 R0WisRJlqBp6QW0BFoROwdze3RQHvW8FUnimyj+pRwMnqNQp0pFXVmNTTTg/MZr+xw
	 NGRKgl65x6BG3Z4xYj29oC7Ertg7mkDjY9vD7lgjMHjin2YJOF8IS8Fp0w7pCgkihs
	 PcICjjAu1+Ykud5o/LBtW+ozPmxOf11CXasOJUXKTC1eBPebjB/Z014kBysN/L/J5F
	 vsuf1R9T6eXsXL4pIPgn6ehevseEEwxLCyo96wWsA42dSmKi58dJB+9py3FmgPPv3/
	 u1W5O9xfUeWbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E5FECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166294685331.6828.14409372970546186201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4018a3ce37d51e196be068d8417ea97726be64d1bd182638bd78ad9801d6548
Date: Mon, 12 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662946853
