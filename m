Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55F736A
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7905DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665838853;
	bh=SNIqRmwc9LYU6eFQqIR4bZSatusw/P4fs973YZLEec4=;
	h=To:Subject:From:Date:From;
	b=nIlEYcJyLKfuQ0Pj6lUSrU1pQHWZ2o9V3bji/KjT9891Jwvsu15jU7MrodsgbEfpC
	 aS38ZdJkvF8Rx4qyAbQboEqicpK7Am3QYQEGC1o+Ek4tHebXBqChPY6qvAENDcO9V6
	 M3BXMfit/X27hLhX4rVSqfHCV03YIgyinmg/G078ThkRKx5oMqgC0iIGiIVsS3LDtP
	 Nri5heLuDt8kp2Xge9STeQHC5XALPRjdydFSTJZvvVZaripLNn/125oQaJtxrTIrww
	 EjSIyR03kMcZl4B056jIak+ANsIT8JutLc9SkO1GkIELS3Q6KMsj47yb1Y4pWKQZFf
	 +bgyk3j19tyIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61011C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166583885338.21768.16022320859994274460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859e2637d93f87b57d83dc249888b13e8ff79646b603313136799fdb735bb589
Date: Sat, 15 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665838853
