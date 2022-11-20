Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0FA657
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8374BC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668928854;
	bh=c6hD3mMHRC69OQY/7tXhKQU7ATNulN+cLxzI+YbtNQY=;
	h=To:Subject:From:Date:From;
	b=hRxYO2D5KA3wfWB0x8BFt0vh27rP0brNtrCm2Thz6t4wW2ubDARutPDt9EnP/BFWN
	 8LmQBKTeTJyCDFg3Ct65mtQElU+sie8v6EC+yna/f9gJ8mlrX7TNw3Plc0inAXbRYx
	 nB4Eizy5VuTAN+hQz1VVErsYT66ZpDp9HBCYEbM+6JHRxRgpQ6O9bHCXFUdctiGsHj
	 1LBsxsNqC6HYn9x0tnJQjPBLaBGTMIg+9KoCC+Kcuz+gKHRyu5FH4D/mryjhqFNU+O
	 qQfHkFBSkU6mlg+ZPnM0OlGzt0H1GjNUjXyHFSvjsNEc6vn3n/k5Scu5iKa9jrzhYC
	 W7AJ33QU8J3ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64DACC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892885437.16382.4852160111884817227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c4fc9244a0bb27b950ecfd8674b53cbdefd67da8595d58f77300909118528a
Date: Sun, 20 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668928854
