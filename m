Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7786820F19
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 04:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC054C433C7
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 04:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692764048;
	bh=pVseDwF656qJdrrjYMtG0YSAzG+tt1iEKADkjl/EsCw=;
	h=To:Subject:From:Date:From;
	b=FgTq7qPebbK9DMx1RAX4bRp5ikwq0S/33gKmSPljdeFFlPW045XIPmwUxsc8D/rn4
	 3xHLwJa2uxQKUzq0fXTQwqtVWhgY2W+B7BKM2fsWqEAGz9Vwanhb2qIYb22WXCDu1i
	 oL1PzLMz5lOSqJL1rwdb8f5dcZ2z/0w4fl+qAVxTbwYqXQjYBg+TZXGwSqaQaE+eW3
	 6ToEXL2tqIt8XQVMsFxjFNg2EduwSQGsRlu7qa1oMW20oqxTNmsqHwVIVf8AsZ3r/E
	 PKCKLIFno0YekyIfxh+ojLN3zAaFzGcAGcVHWQtjrl7Flmu+rHYmDy/SuZnPEUlX6v
	 joozudr0loHqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0FEEE49A3
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 04:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169276404876.26364.2268454696462850381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4f0d05538828e2a2c10dc7292ac5dbd75e6c46a16279e8fd7e3e5469a5fa5e
Date: Wed, 23 Aug 2023 04:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692764048
