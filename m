Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04791C3F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83550C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667577054;
	bh=WnAX2debo7jpd4An8j+NMlFY1asrfGWDtT1Y45YuOPM=;
	h=To:Subject:From:Date:From;
	b=KTpwInod/ZEi/gTKp4KD2EKO+Fc+zaekYaAcjDVe7lkmegpL9UZTSjhai6lkc1I1Z
	 Qq4tZFmHp2mUwWis6P7aV/jt4WQLOF6X2YQH1syEXEtsmP1gIwqDryuMbaOw+BiAoE
	 fdyDUxgHFWLZCCwEq/FDvT/R6ysYS2UwbA8jcfw999GRqQxXwXiKaB7wJXY9sX1NWF
	 xb7rL3tY66o3mD38mTK9FH+3BF7onPYx0xKZd/nEeV5H0NIEgUsiiGUa5+TmkgnXHc
	 bT8jL0V7WBsbxi7WuaT/m19Hxj9jd+rd31tYsfaq/x1AOk/UM3Nawo5qcDXHK6VWmN
	 JN6Yb/FmLwhaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E6FC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166757705439.17540.11078711179472199432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b1995dad18f54b1c0fc056a599ba183dc63b4322a7239ce0dfa00d34b1daea
Date: Fri, 04 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667577054
