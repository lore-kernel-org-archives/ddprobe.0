Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154DCA47
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTYc6v36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8640DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699580896;
	bh=hnS+Igmw5LAQaH0E84gFNtO9Q/BIMZBfnRRCPqEjlJY=;
	h=To:Subject:From:Date:From;
	b=CTYc6v361OISfLJvykbOFxP3a5OfxJL7168+XWHZM+bRqBNX1MJB7wJHf2waMW+v3
	 CU4xRcG3+ZDET6V3R3ktBNuRz5UPmn1vVjlLL6Wk4nxM9NCnOWMZuKaU2iFSjU+Bl3
	 QOfUigvn9mB66pMFi/UxqDzi0XU8ySDhMMANuyO6uH+IAN0So5MuHQf9rtqd5hGABD
	 1CpQc4f6FLOZ1Ph95wpISCYWlFQthw3qMJ0dzMe65+AkbmeQ9Kw6S4XTThsJbbnc2J
	 ZY9/rqDuzmHmfuRpl4okeajiFpl8VT+hgENyqXkE1Mjk/Gz1DA/09FFm9vjU4QR8mZ
	 +80QZPRokcBeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670FDC4167B
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169958089641.867.1402551841157864589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e5d812bf65d7b444663dabc504ff2070d4f0ea809d7de45fc0efcbac494131
Date: Fri, 10 Nov 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699580896
