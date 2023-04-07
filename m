Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4413F7B
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 05:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BEDC433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 05:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680844085;
	bh=cJg49L6dzWCHHOOqqitOvMH26GWhSCv0oX6oanWhbto=;
	h=To:Subject:From:Date:From;
	b=V/Iq001Ph6Nz/kQCkT0HX3qmwA9JUQKIM3R7gFQqP3hJPDRdCPTY9jkrvXz0Itf8G
	 9Bx5xsFVcRqFjWP+Bl4AGzD06w+JCZ5ea2LVwI7lpYhQ2nVXKYHDEYj1Tjf65qpavK
	 l0W5zehInQ3cXaGcgwnuyFNXzga7HBvDq56NFqZ714ovZtNd2SdzH1TwMzmCVrnW/G
	 cXD8LpIYjrAGD6LOorToIwDTg5t1lKCG7xeXW2Gv/5DVeHsU6E/cMvO8IQAMZKsi+2
	 TYU0944Lc8RdHeLtGtIVEG36CQyXXjTDtqcGIrdQq2AWXaLZ4tHM/rBfhNAR1iiWua
	 uPDGIVEnr1pnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85CDC6FD1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 05:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168084408572.25113.3913700163102713383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2a90518e00f362243ffbabcb3e1a7d694461ba4a732e7da74939a45b35d0ac
Date: Fri, 07 Apr 2023 05:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680844085
