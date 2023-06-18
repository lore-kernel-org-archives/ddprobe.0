Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5084FBE4F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 14:30:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA7BC433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 14:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687098608;
	bh=JFBtxrJ1pGA7Y/RyTI7I8NILLp3arxIKNuFcVGmYPU0=;
	h=To:Subject:From:Date:From;
	b=WNETMcwVdKQq8irxIgH78BKTDoyKVPceAFNzTAzk4mJB0P/C8BtIcYyLgJddtHypW
	 MNr5Mjk0CcK7uH34Y4oVtJ3lERGxtKugWMRocoGzJ91A/EB9ft1+LQathy7V15uPBm
	 GJhsfXhgl9mFNOvNLbm+wSw5ndxhEKB2CEklCNeP+m2Mc3AaUXBmwTcyZoCafhQxXT
	 Q2XGN1XkxtdFFD6iEtsvxnOwjz3jUTraTwKYe62YuNrnaMSiwgcFK2ocJeQjwYnOXo
	 jKApjuFzcarVUnv/ezHTaBDcgV5w9YMkY+5dz5QNLI58G6eoENmNXJJS5YPKzI8ZGL
	 2Ko4Gf1xALaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7FFEB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 14:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168709860869.12660.8025556282772610200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0988aeb3c7e0bc05a29c233d3fc7a5c22258817614d3c1937e018a31a73952
Date: Sun, 18 Jun 2023 14:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687098608
