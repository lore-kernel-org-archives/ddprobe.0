Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA2B7470
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 23:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 093C8C433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 23:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682379186;
	bh=PenYlbxr7I7ucfSUEDBbABFxeQN2G2GfdDE7JfiNISU=;
	h=To:Subject:From:Date:From;
	b=PCozHNz7VX9Jln1ALzg6jdkzbcLfADZYrWvgeqvlaZRln9Yep0o76WP2adqSOung2
	 p//LlvEEP8oIEEj7KSOwpQ9kAu5D+Xv/9GiICjZWhcgM99vcs2OW1EIkWtuT4WMLAC
	 cCUictcLsANE6WA98o01LoErdLOEv+Hzj9P62ZhbepESISGiPedgXZyNNmx1SJhOBN
	 EgCglpYI/HRT3pHSMstK744lxx1f0hLrj0hQGh6pD2LZEvpiJ+zyEGsmgPmJlHasek
	 49AQmn91yJqAMrVqLLbSEn0NY0j3YXpP+qR5qKvZG/s6X5FiWoJRHpof2i2b6yJdUQ
	 70b4w2a6KTZzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C97BDC77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 23:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168237918581.19283.12492776901490157447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec54aae76e26c1fd99f4d036d69f4aafd85cf247f18b5c2320092291ffa5d9d
Date: Mon, 24 Apr 2023 23:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682379185
