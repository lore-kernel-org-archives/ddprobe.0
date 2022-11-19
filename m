Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB77EEBFD
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C7F2C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668895254;
	bh=5jCcZWs9HeOLjGuDFSHopr7dS/It2qz4VWQv/3peOMU=;
	h=To:Subject:From:Date:From;
	b=F+tiUYIvxw9GMylXqYGC0q3R8cgLFxNthHNP8VtFYQTs60saI4MZS7pkKW7uGID6T
	 +wXCJjJmkE9diosHTjMAZLVFnGRHDEFAXfdWaHOA5Jd41MQ+bQYqcXEuW9QPAuaSN6
	 S95PZYSCUxtXW8VVHrczKDur4UI/GPiDrvx7RR5aP91aXa2+P057CswmW5X33KEFMf
	 okRNsAlqILl2IBEm0W7BKh19VUracrx0uFM9AzTRgGyA8i3gLSGoWUbpjJZnmtnHTX
	 fs3Q6KnKOIoeuBcm6kpQ+kvM7BAprIQVHfNCEROR92LLR30MQBvWnAi4PjpC657msi
	 WZAqvMyS7maZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61DA2C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166889525439.17962.16789060830541753165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f097b640a60cce5f0cdfc7234844ca98d8cae308f7f0cebe31e1bac7502a07
Date: Sat, 19 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668895254
