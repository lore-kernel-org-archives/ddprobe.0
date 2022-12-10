Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F7C10ED
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95A1CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670659287;
	bh=18Ny3XpmevAn/gv+oLdbVazJNstO1DEV5RMA8Niwq/w=;
	h=To:Subject:From:Date:From;
	b=AMG+07jq6SX5BAN5PUdwoOPlnG8aQVcWmsuAvOVneNXyg35JXgxfpF5KCeiFYLGSh
	 ssa8d95UJC6u0OirbA1LSkAwL/t87ezDdiV4Ju0iyWL0fOWhm2OQoHeU/rqyZfY2mq
	 outdr/PU0rKoquuuDsMH+lUqYg+eM0/fkt4Ki7FzeNJFz62Ck2zCr7Fx9jb1GIEQij
	 oUYRxy/P9pRnPWzVcPc9t/Q6Ct/QcYqqyGMYwbM6/XkLvqnqgU1ajvtBza/p5oGOFh
	 /k5mKqQx/nlPYUHzJ04S6kCusDC2vGSPkB7cOs5SoAE3BEm/1A5e6NYpCyhHDoR+2P
	 g996CpSBHaioQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 728D5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167065928745.26193.3156027851341600599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1619b6d822a01e99bf451261456a3d10cb707c4665b3fd56fc96ccae3152fe6b
Date: Sat, 10 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670659287
