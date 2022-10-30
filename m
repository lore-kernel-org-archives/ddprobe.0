Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B851E6127
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7039AC433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667126454;
	bh=foPHoulXtIBLZUuwOJIMF3Crto+IMA+NAprn6B0Vxw4=;
	h=To:Subject:From:Date:From;
	b=OmYjWAhWNfB7DubE8amFWcmWLSj2dLyez6tJDClhyFTtFQcCFtoaCr6SOyr3raPw0
	 NsXVqGn2iHFRd6wHivzp6nFyXxSSEgk/HfEFdaLMnuVr6T+diPuR9xbxxHPulHXkDR
	 TlJD4tuoNEHa5LPymhW5E/eIcscINQMs4DH8pihaUNoMOxHUVVWuGRYxN4dGkPR++5
	 nrTy7De507w2/2KSLMDVN8PGU17rh2DMXvfaGn2RSzLGbSd0akhzQ6qX3MoBGjViBL
	 mrbVksmuDa9eWPqjfqrf+KvifF6+1qNx60ubUE3skNl6c9Cbv9FLmYVz/5jZYiVb9Q
	 CipG1SX5B7SSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E71FA373D
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166712645432.24249.4250517077237066334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba18357db6f43656bd8f5fda17ff450eb1b2bf7e87e204981098aa9eb0b631fa
Date: Sun, 30 Oct 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667126454
