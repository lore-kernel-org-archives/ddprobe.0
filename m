Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25C4374
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED13C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670385054;
	bh=JJY7Tg/LcmrISFZunWL0WvN829L0Eo4P6kdAYfWGKDY=;
	h=To:Subject:From:Date:From;
	b=BCNXHLZ56/Ii94prY3mR6BLjSACYY/YUHy+n9gQdEhWKmLCak5onQrzB+Chqb15Hr
	 hWHwES0MYy3PFjaxyf/+fDbLIRcun36JNGB2WxKp30uBlYWBdOd7UDyPQx/XMcBdxO
	 iFvCRwnelDHbKNtgY6U+5mYotW5Kxl42VMw9CkdoHrAqIat0CvW/zxDhwMMNjFfDZE
	 h1voBgXzQqs0sVN1DrLASmai72USqdzYAS8wSzY8l58tbYMA+1GcGvEv9VmYN4txpb
	 4/Gkr5iQCCE8PBxTGQcwmQV8bvEape5c4l6NVa9bn12wvOMGmsWgUKLhddQ85kotTT
	 vguCh9QP64W9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59038C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167038505435.26856.13391405689270185426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acee1026f74845b9f8868976f4157aee5e2298df4b6e496682a5bb8c567337b
Date: Wed, 07 Dec 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670385054
