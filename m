Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE5E36C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC81C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663381253;
	bh=+gOH8zyx7HARv1BZZe5D2+dA43Xsuhxa5rGrIVoh8Vo=;
	h=To:Subject:From:Date:From;
	b=BEghUGATW6M907sJzZ9ki26MMi2KURl5ZRIuy72FMMtLMXo7Rpv4QX/3K2cyEpKWy
	 YuhGmTotUNxS9SCQtkI3ulMbRkj1bG3FlC0WmshrvuhOqfTUF1R2xVPnMbOdv/Q6pZ
	 x9cw8fg7YzLVssEpWadTwKrdSz/MzRHIRMxaZHM7oNlstDGSc5a5jjt2uQAQkuheIX
	 MS6xbeWwqVnn/Pc0RrHPbnZXfu2zGN6xlAPZZAJf/KGxcBEiP/Fez7wgan95tqtfkg
	 uvAVe/0BGENMXtUEsnTaZxUS6qtNKMiTtl9StHSI4aNIN4HDK0T4e6fUnT7et28OJT
	 vS5/3NVamXHdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D15ECAAD8
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166338125332.2711.17068713258853836244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da5d1ba0e7d5be36e7bf11008f61043bce1ceacf5f020aaaf5cc51c40c5c1a8
Date: Sat, 17 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663381253
