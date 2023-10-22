Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E13DA51
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tr1Y0aSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0851C433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697968696;
	bh=bH5LjBxjdM/1wnE6TLh/wpCN/qFLHawHLwRFJUS00aw=;
	h=To:Subject:From:Date:From;
	b=Tr1Y0aSxzgt4m/KJE1RpHd1LyKPZgMJxLgkEs2YZvBFcXyxy7zrEtrJJilKov4ebX
	 GVTR8lOj4V7B75br7ul/ZryjuxBWpgmMNwVdrMGvzqem6rrp1p+kalODMtwwlFzFop
	 M29XuLwWmFLMqb7Cupb3v6aQsFZm93QHOTfp/g69AfGKsqfQ8qtIQ8WbVQMuprSVlF
	 q395OKugrVlXUwG1UasY5SzhRnTfIjwHl45/SZdczzNCi4KYvg5JsoWtrMrf2Y3KIK
	 9+YNU80fz4A5LZGlDvwRE4H9eRQx0jXveA1vN8WmL8zLdNyRsZPFihyd7VXjRsHBzr
	 41RGB09M3ZkQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76279C001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169796869644.27687.1012123332891324170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1d3067cc58a699cc932b9c5689795afb8d2043191d84dbb6d7ee141f1a83b9
Date: Sun, 22 Oct 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697968696
