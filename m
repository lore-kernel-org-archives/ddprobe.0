Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461293C34
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 13:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E223DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 13:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678800485;
	bh=rRkmABxDC35OXkfOT+GnaEYWZ2kOvvKA7cS6rSbAfIY=;
	h=To:Subject:From:Date:From;
	b=vB/A6sEhgAC3eWYswHRpxveomG0nF3AvL2ElAutCMllwobdUHCW29tIegaRSbhPrR
	 ZaxAkXIXbhLGHivS08aRtKCsl+R4NLjCnKFePjzSHNWed051q+qj5uQuYpEuiuOTh9
	 6Y5qJ5lhr+3/eOkFQ9DxWS+/NVEYvQpEXX19AXAFV1P9IO481ccpg82lUUk2x1PQou
	 btVaT19JZYHWFMaig+T6XCL+AXHZ0dNQFSRcT8PHyvieK6ozkO6i3VqcnaVOrHttw5
	 xv7J4vj8JqXCxe00bDW1q0NLumql8BeuxFqkgEC8zPbi6eoIsIxoHroSLrhoWL6Ah8
	 N0T9aSWCGvnMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F2CC74A5B
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 13:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167880048579.20682.4980749233835582120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42905c7125c9956f556026aa3687b322b8380bb2a22c7cd6ac2677e153098b03
Date: Tue, 14 Mar 2023 13:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678800485
