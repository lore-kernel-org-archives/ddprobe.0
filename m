Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C589C369
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71162C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667385054;
	bh=Cj/TRbhGBwBnLvG8cWKYXH1sRzjD+5sB7PRxpVsH5+s=;
	h=To:Subject:From:Date:From;
	b=jAjXnJk3qcmk1Klsa3tFw5O0LOmT0LHCD6N47bK/HHD2HHsmrcnsYtxBC3B/2oAbQ
	 9KvR965FM6mX9VEXS4k2d9zsim1Cg0FmgO4gZXV9RcsvWyu3uIfsNp/8EM8vqTid6e
	 kYcCfldiMMtAikKsrZAS0SWiWEJCK+clz81w+5Bk/kB6mC3DQnNBQwOG5d+o3vZ0P9
	 JbDvFgb60/uP660cN3t7QHHjnGbmL8kCGqL+ZdgVZEi7ll8IMutIKp03NK/HA+bLyt
	 1m7JD+D3BFIsGllVyP09MqXFZJNRQlFAeGf6OSb/eqoDretf3Ns9m4uZmpn3671xWC
	 cC9CIhZD9e6XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561BFC4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166738505434.23581.14042845973810092222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e54fed9761b24626ffc2ac50ac132bacb1a96ad0ff44101fb5069cdbb9e9f0
Date: Wed, 02 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667385054
