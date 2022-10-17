Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6AE7F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A8A5C433B5
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666045253;
	bh=mxY6eBmLBXso61t/L6myh2yR9hgTLvtWxcCWxSjK+OQ=;
	h=To:Subject:From:Date:From;
	b=lndGlXSdYxvKJvxysIOrcUp+jl3iRaxYD8XUiQGNyYFSi8Y0W5RMrY52Yqtu5uvky
	 ZFAx+WSvg436nZry2TrFQur7fOb5XciAZmTFNnlXTBJRnzrU6bTwK9ET4IeG+qMY44
	 sp6WrBWREGiPDBzfkdr9LkAf1Q1hh6jCmYD3RBc/MlTD2O63/Fo2GSfUjjb2BDnh7s
	 j+NsyaYYnLxK3XUzilEz7mzQQB2rqj6g+SNpv2uq+qzG1oZzWpK6mUcWu2CAza45FS
	 w0V5SqsGSk6mya+42+4M0I8CFMnDIepWP0jzkl/xc5r1VcXM4XpIRcvIRUezwIaNlZ
	 BsmMvCh04ZGyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58277C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166604525335.18836.2761745546853812119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330c19bfd788ec336429dd4316cb3eedfd68fcac0046d0be6c1ac4f23a2b17a1
Date: Mon, 17 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666045253
