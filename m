Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7303D61
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 16:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB18AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 16:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678983005;
	bh=jan83tj0w/FRoO9Rzvr1ZicaNTKq89StDGQXxzzSCi4=;
	h=To:Subject:From:Date:From;
	b=EfxtUcmGvftiJh2mwCSAdNT0PNefQv8bO2xL6nnBAD4iHmJSJIeXNbyuTLJdBBOSb
	 zS/ve0NFDBK3AzEzwqva7a2iqcP6v0qlIszb9SLMANhnfENZvqFf6F4NCJRfsIJHpT
	 m+knDYUbpHwy2sLXHvN//3Kr44+kdexGHgr9NulgV3yFcQVr01UUAAIyHpQgHHJl6u
	 9v4/n2NqypZq9FyC46juVDLhFmc23xTuioWiBngbKFn08g1+vRISLVvbJG04+Z5CCe
	 7DY9x32QptbpEmZJfq+wm8gjG/ToDaF8SeLjYjVnI2roL9fcC0nT7DJ4mx8/+KB1wD
	 LX+KG15bw7x4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC11C6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 16:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167898300577.21883.10842236710488743997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d9c1826d1d45482d0192f3b2e8d912823fe316580b37ed56c7a66ead94028b
Date: Thu, 16 Mar 2023 16:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678983005
