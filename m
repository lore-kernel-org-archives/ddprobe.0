Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD1567E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A3EC433D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664247053;
	bh=esZcpOFbX45oG8G4fJAhcGKOoaKS0f+nKQbKQH5Q/XM=;
	h=To:Subject:From:Date:From;
	b=CgvqnuRW/jje2Pf6X+VwysRG9ndUdpDkjCTmCgmem6XGjtbSVB/O+0op1a1Qbw4Io
	 Sz3zpmKE07SVicW9g3IGKkjgDGHI+yIINjZkInldv8cPw+SviuZgBz7hT/pi+Cdzxz
	 8rPWDgS3VQ61Lmcf0OlZlHky9Xoq5z/KdpI7Hcvn6r3xN05Ey9MkWySDXdCp0OJ4cf
	 WHNhAlsHU7zWod1CiP54kE+SuHoEIkzNNeaBJATGuLjAXUjShmXAnNOMl5zt/wmaAd
	 tkPentDYmJIjThMhdsnsbudiDnt05iHUfpxJKrDgb0LHimd99rOTQNqMkpUekWN6tw
	 Cr1JVGlSTOjlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC94C6FA86
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166424705332.11263.6039776557779351811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2606a21b20e678f687d80feae111946257f5cfea7c41ca67d9d91348eca0ae7d
Date: Tue, 27 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664247053
