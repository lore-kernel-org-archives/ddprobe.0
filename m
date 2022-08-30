Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8978374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E0EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661838053;
	bh=5axUIe/cXO9QR6OHR2gFixBSKEr9f47OpFbmFvyU800=;
	h=To:Subject:From:Date:From;
	b=dCXUXw/kCkd47BUoRQSKpf7GsJwwIBbECGysuagn4Z/WmcTYIrrAQCow3lduaSPDi
	 1VZroaS5xyzaiMhgQNct+rWcSShPWqF8z5MfgDz0C5YhJw7QtcigleZX7/JSnkO/1B
	 SCaoqmjvFpvqkVErVyZj0KQetwSSsoGHDUGsLjxEgktGuZ+cBru1SKCPorfv15i6cr
	 mZDdRjcVmMsDKm/kCB94fxnvtgvDiR7kMghEjnRiEu1gPVcBbBRJ8Bf8qDhWekoDkD
	 nOIP2Yj1Jb3qkueuBXDSo396MHXa7uuMf79NEB9urVaFyaxnevZ4vof0XKNc4Yewh1
	 aYmfkrSXdh0rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DEE7C0502A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166183805337.16911.519689180388757543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c521518837df2442017f7ff0f209d14ad2328e2eae41085f45709a13568084
Date: Tue, 30 Aug 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661838053
