Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA6662F
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 00:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDXVdc+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38BBC433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 00:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697071628;
	bh=yNK95R3KtoD8Nq+Z/BkAD+dPZ0+JM/HeQf6CYpGRJk8=;
	h=To:Subject:From:Date:From;
	b=cDXVdc+c29yZzKvFxBN5FSQaNf9OLbSuK15hAwSf5foR9MVNdFmiD9qtsJ1zFEHxK
	 pSrynhCROAuWpHkbq7NcNyEdlLee5iZhl1DeI4FlONghRt5xZ2XR7AqoRJJp4Zreq8
	 isbMomUazcygjGeDPskTfN8d+LVLgKQqiQW5xTn02xfte7D+y5ZKO1VFQaMU+Yi2pe
	 qbNsVRNJhqFkr3yOohrXEYnKa63Noq+DTp4mu4PNblty7WmkX1Xjo8xlnANIWluef/
	 tEJVG2w5Fix58rUxLtFz/XVHyk4p6RTvG0Qsh6ZPl4AvlBmwT58tu3+IVUfZ6kZNu5
	 ctOLtXt/4CI4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B694BCDB465
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 00:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169707162871.19117.17670840160388421840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d145c0774e77bd2d272b18e53c82f98a9bae73d803407b0fc35ee03260379c72
Date: Thu, 12 Oct 2023 00:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697071628
