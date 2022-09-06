Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B467517D1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6848BC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662475253;
	bh=unJU+76izvtXxalbPcxiD3IEUQl+zuB6SKzzrhUCFXI=;
	h=To:Subject:From:Date:From;
	b=u0P10w4w85xcpXcmbwECe4MAyHtkoHIBHHNf7CE4JhtVgB/tGvEZKzuEJXN99x2KS
	 BqwYqrz8VfZ8UcsYMIVc1Hz5RTwuRTD4I+6ubcXqH0sXzQqCqwHeG41Y7AU65ufB7w
	 4OFh+h+MlOGFhm6H7S39l2bwqNjOKuvimc28TQA6pqGEGz3fUY3EqzhDX8Eh/Vb4wk
	 gXVRWjscDCnvezU+sKhWBrCoeMMr1ObsXMGU4J4+88AWgoK0L70Rcb7jpu6I2bJgLK
	 xUBQShPsTL8bscS4VOUk8/+H0EJ44UDrIP1FtoJLoIg4O6FxqUO5IPD3+t0HJSgjWM
	 99kLzcNMN4oHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5262EECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166247525332.4272.9158804161126473470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe1c29d399f57c8d70f677e25d02b733712f647bf439406c216ce1f3773c777
Date: Tue, 06 Sep 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662475253
