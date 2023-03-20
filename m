Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452911104
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 07:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0833C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 07:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679296626;
	bh=oMGTsCMZrJoixTxYm8RicmTRCG/8xrQim9JpdrACb0k=;
	h=To:Subject:From:Date:From;
	b=R4Uu7qOkmDBSPHfLCl2EEKcOSfaPu8uUtQ6OL3K/AO3MjEIjJLkUsAXBAg+FzCw97
	 EmzPqMWaB1Q0I89jk9y1sZzipcyikuxTTPl89qz786HcL+5Da9CXlXgofwOLpbJw+P
	 0yAIMwi3gOGLwvNLCfK9C0sLMLlcSIDzMtYnublYPs63tic+u/2BS7zQafj8r25cHO
	 6VpoyXAEpWajvwAS1zW9iFWPyG/6qRZYEd5w1Ga0oqpbmtw5/hOR1TnQf3EPhjg264
	 z0AieKAn/kGTFOw6f5NdLjD3DTTY9kvJxFC4Bd+y2AmH/knG17YEqnMxJwTREJl0OD
	 DZczN1KmGbXtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB96FC6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 07:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167929662581.6719.899849088063197645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ffb155ac1febd17cf995e32f21a11c849a409cce6bb194cb6656c62468308b7
Date: Mon, 20 Mar 2023 07:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679296625
