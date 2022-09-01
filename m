Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBD77FE
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D5FFC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662006653;
	bh=M7l7aXptK/cYG9rOmHej0FWNVmAB3QjElnrCxChoAHs=;
	h=To:Subject:From:Date:From;
	b=YC7GKY2Yehtko50UrdoZ3UmRoP3ZH49nglScTeQwGn3+MAFvzg9Dp9Ro/rfLL+wxk
	 vxVPs6fEzqUZ+o98t8Pb6HOGGwlGwqvC0Um3KASANMoG+yrBL6nDnaZKuOi6Lwe0xT
	 G5sFYmRu35GPqXAvNdVSyqZnT5c2HNEeVoznYMnSg4ewCFqrLAJ1ccZB6o00PlBV+u
	 OQxfgrnyW96mMyl7l1Ay+bNJ6TIaIi4H6mqQZkAMWQkZAu2oWjxLdpWt3K7vus5LLo
	 LhU5+09kLpGAue8s6qn+DxQrOAYqJH/zIod6upcr+j54Ec+4VfWaqqhstoFAdWSs/n
	 6Uvfwbu9HHq+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514CEECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166200665332.4124.13845853691184173297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a2f61112f5651b9285d926b89716abdd09f1ab6095350e1e1f865a77557144b
Date: Thu, 01 Sep 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662006653
