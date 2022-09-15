Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E5C28E7
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68494C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663231253;
	bh=tnedaXob5Kra8XeXyzywjjGRKHctVqt3u2i6yxczb4E=;
	h=To:Subject:From:Date:From;
	b=CvcdQ2BWwlgwawpWsaskGBb0irfcCrY2gRWBRksRQuWyLOMKvFSbjg0MJxJsvf/M4
	 OdYkNPwX/6XkDnsnKfQ+J9W0jewAGgxc7I91RXf8k5AKfUm2LevDcFlbjBevTQzJoy
	 EW1aFQ4Nh77+Oxngf7OEWTwxDa+rjUwEdtcN3iuxj9iCd8urLdYdZIgviyMElpbc+5
	 Xw38ZcPtob1USSWYrBQx2cfQfmUqPtlyii+RjknFMu609MLVWcB1o4rv+d0CdtfNLc
	 QwKOfYYcvSA32A8phlBVlHBjq/Eo6AKOibsba84g9MsLSTvkOrqIjZBDyPElpwB8h+
	 vs7wT8k1IppjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DFABECAAD3
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166323125331.21464.1452087842653355225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df0d14ef51a9ce30e272132dd80f221b2372b3de34687887e4e56ff0e8cb8871
Date: Thu, 15 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663231253
