Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA1236A
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 751A0C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668911454;
	bh=iz0dftiqKNwMM6gGcyv4am6pVhUgo4DsM/wciVB+8is=;
	h=To:Subject:From:Date:From;
	b=NKRBmWibo8+2x9pIUXtDybprbn1ZltpOHcnpXugkbHRVm70/DYuDnS29PN8oJULsR
	 B7NwJxQWVpqvmyqYZPF6Y1buBzSOE7g2pYwub34kymw0bc91vsYqWHwKsKFMitjtE+
	 8bu9zAS7mTlvv9AsraPLvz4Ko66LD1Jn+RchK2+ge0fu3Fi68mGjDBINxFF9j1Ii/5
	 ma1VHeI3WHWeEb1f3qHRmkmMe1a8aq8qh90R8DOUIBZaX9SzspcxO0Hpx+r2fRByxU
	 gcyAwXd520LZd2Zpgf9YnHMnQ3x4nQ/56SfLeYETlZUZnXYuH5ZjcDEgE0QNEiH5lJ
	 2nSYi5rY5Zekw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B20C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891145432.8700.1845590160527722392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49f8dd7d7e0621c27c57ff4e393c9019c1c566fe7e50fee4dc2e4dc89e349d7
Date: Sun, 20 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668911454
