Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C491DDD9
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 17:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8FBC433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 17:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689098228;
	bh=AFMtnad2immsrf5p5mRyzvUL94DXqf8an0LgGUNMxfk=;
	h=To:Subject:From:Date:From;
	b=JqOk+J6uxM5kVwdRsmsKYItkftt8X9c/UTNmqlm8V7mFeDSQ7Y/2FyGW2tRp7Tmi+
	 1Ifwxl9h7gAVtcHCIOBZQ8Ewh5jUFawn0VverejBekyQ1KfcvNbfMKjGun4fnDDOem
	 3LHxj0OepQpVXs2mci7CLQ+p2KSarImCm3hSNYDc3lNrjBjCEleIx1SgAU/kmag4S6
	 YVze5sydwJDcnsShYp8lOtkUlmEYtWqqCYX40Pe9e7DPD9p1JQjW4RwUiswxsHHWnl
	 08U7IvH1eWoufIFC/Yarr4O0LlGqh6z+oIY5CjA66p5X1g0zTODRx7tsjSo3Wd1Dj8
	 Of9/afzrnQjgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1688EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 17:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168909822871.9094.6281661764124988012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6ad8e0d9c98c09804e433af5642781c1f64421891128a70691d57e7263d1cf
Date: Tue, 11 Jul 2023 17:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689098228
