Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF78D3FE1
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DEF0C433F0
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672323087;
	bh=ZeHEjcMP5A+uA73YTsBbpK1zRYMt8v6uQX/2mRKZFqw=;
	h=To:Subject:From:Date:From;
	b=O1I/9cAig13eBGD8naW4sNXj2pZ4o7ZEliZTeQEHIIm25m4cSTLXcKCJ0vc0MzG2f
	 xHRlPzcExJY6ziGxTNJ0203p6Va1k87x6ALjXNx1rCiMrtRmWFy6ekgj6fLV2gKvkC
	 O9v6jiU9/bVi3oqe5KyAlv6zbPSYES+l62grT/Vy6PhNXht3QWgxclRnoD/QX+QQ6+
	 N1K8vZEbrxybEcZsofH16IJcuDqXZjxKjQKEC+rOQKXYrATcJ0NyMRQ8evqkeuWth8
	 4FIOguVot2BAowolNKoNqVlajUdDqoeLOZrtOQzgZMGOgjpPf73xI0f2u9IdT2aFsr
	 HQeJHmgZotK/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74C4DC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167232308746.8544.4521406089337958831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605939ffa9862a410453e752f6a737ffd57d55036c4a522c6590cfa560f8a990
Date: Thu, 29 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672323087
