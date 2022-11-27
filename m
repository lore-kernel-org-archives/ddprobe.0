Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0229017F1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96FB1C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669531854;
	bh=fiGJksVvpSkD2c9yMWsPpS7bTe3i/Q3Yp5M7dJMmw4Y=;
	h=To:Subject:From:Date:From;
	b=QGbHO81NR3DeMaG/Ke7S3XNubKlfGKbiuK8WaJ4jaN+qXCCk3rThwj12J/rFW2BY5
	 8PNSos/Ss5PlktGPxBIpkHtbLStwpNEmOGOgdCuOOEkZvqaw05601Hh11c+0wDs3bv
	 EDNF5In4YkzxL4YDthBNDGsTv0e8SYcWl0SdABufUs5RlkSKw/fCMLYndATbDC+8mj
	 8C3tQrldxl1Td9NkgqJDsJ1jDPKelIlFrfjU23OxxTY758tITSURbHyumtOSgNGCPL
	 57FVXJeaLujWv4MV+rS+FDvLU/NijukFAA/wLaIYPrBh9czsGWFSCvB6y7r02u2+/8
	 0cB1IJQ9bi6Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7945CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166953185446.9850.18261949618630978330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd9c6504243f89d66bc431a47c2e202bc0e27c1529067c529fc088801699adf
Date: Sun, 27 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669531854
