Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FCB7B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80113C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670832687;
	bh=Zyt6XNdX8tM4IqdIVwWGZ+QZwLVK08Cxvp9YbNFe/0c=;
	h=To:Subject:From:Date:From;
	b=ra0vTD5B8MYj6pMnPdA/Ng+z16yuGwyhdcCyt+vsEj9CbydP2jbq+2eCWOs5Tvk0k
	 gONM6CKh1NFT8zeOTd6Y94sgjMalMgDn2pwibWkewDqXy3KjymBa+gRyYtrrl+EJ3i
	 UrN6R6EyWLfhSBU4BhjHiHGmuM5vwoh8A7I6P+hVuTqOHlntgt/UTxrdwUgSeaSTxM
	 TleHx+ltSBzSsuPRtffuGqVB1kTPUx/1ClAElGDsZ3/Ic2UlrIRuvvyUsvAMkqb9XA
	 ySWFf+4OmioPKkcufXq51ooHSJ9mExQ9rbWZxRkFNW3t0mrOiINWpJww1DxkxGSgXd
	 83TzbO2Ipc2+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6827AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167083268741.15480.15065504855578156291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24fab0e3a9a4676c0597157d915cdd6520efc1266d3137c193d48c034d4fbf7
Date: Mon, 12 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670832687
