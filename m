Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D382D23A6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72019C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669360254;
	bh=yg9w4Y2s0X9MSW2+1IexRtbP3PtmMSkjAT4p3Elxg/I=;
	h=To:Subject:From:Date:From;
	b=RCL7qm0brgwmCqDaE/CGQET1kavGCsckeNSiWSzKLY+ojooyUTKHuTQBSN7gJxGfI
	 qlFqQjX9zoA/WK4dzpE5YMw9rg0MteRfHUgkKDlQTNCZgsDBEMvlv9XgHgNgrUgmc1
	 DYojDWReXlLMFVvifWhw+2fYR09opp2o8L2QSUHUuZm2XPVDx9XwVJ3VfbSKRm4zOS
	 Zu2ZhwHwLGzI0fEJHGV0nw9N4aWadRaNNtHejxjlloEOpowUgfy7VcOPBaMFLiGCqJ
	 m4CCeUw4oihktH6SPyOHsAmTh+Xig561idZA3xCNGAeQLgPQ68UoL4geqSjshbPIFh
	 JXUaGdgV22jhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57700C433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166936025434.729.1165673289787256915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ceac13707d67565763f7507b7cc11c9ef06026686ee5bab98c9a2d7b6ff0ca
Date: Fri, 25 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669360254
