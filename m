Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBDF136F
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 02:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16EAC433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 02:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682476025;
	bh=ZBfcusuFVQwse/wJaRXe7Gy5X7U9iGY5uGSxFUnTREw=;
	h=To:Subject:From:Date:From;
	b=Wyc2rRy6kBOMAnzekYWsRcG/o+YK6FIChWPUTNZ6yifyfj6WHUiK5eN5jhjDb5vSr
	 v3VM5+391udTSUPOT0kaBZJFuFxunNRTjXBlgy3NTCEW1H20XTLqrh01CiCY6Ddqdg
	 oi1KL7TjE8OFULXsO0B8PjvOyMMX7gPKroSKmctbDLI9Nac2sdsExgYH6l+l7l3Sr2
	 29mcVXA1fGno9AzkX0lQSWwuvAymGn2aWiNT8oM45v7zBQQpJfnNbABhZkApZAcFgK
	 6/qjM7M1Q6tZvIjKt9Jp0ONLyluJK0xmRgY8SlDfLWtF4UgGOTO/exvMyZ6jdL/hG4
	 uQC3lb0y+tzAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D25C77B61
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 02:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168247602572.17168.15682476697638776040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99991a62c15574340793fbdc64267ee338656284effa0680f3a5ee9b9cb6517
Date: Wed, 26 Apr 2023 02:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682476025
