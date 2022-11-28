Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD031361
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742F5C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669618254;
	bh=Qfiob10rvzq53PQh1oV1PlRkRvVRWnvoziODixqGtsE=;
	h=To:Subject:From:Date:From;
	b=Xu1gLtsasxHc31VZbylteNCK5SJZc543lGrybyYDg0R8I7zvPZQtTVErDVRdl92k1
	 3vimZxpBJXvQPMBkQ1OwKwTmnzBNdDfu5jDvqOd6oKHHzs0jPKNjH1YYVODJOElgRq
	 CpYNFuJxw6nAK18ZYWYdeeDso9PSXsZ08Mg0e5014u++lcYEj+tn79P0aTECHQ3Vug
	 caqXdJca1WzMIfFL10T5ioV18Kn03uEgX6b8JADzCWBwqwQn3Ho+xQs6AKczbyXpBy
	 KlcWFPlJfKBoUXZyVgB9rLlsfXqrGxWth4Hr2qiw+A0vEmHZskAg+qOQja/da7pizU
	 JJzlAFLPcOgYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53771C4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166961825432.1483.16066540389499403858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa1c0ff6dfd855e1c81a8c71458ddcdbfa18951579b990dbfb6040ca5d84a7f
Date: Mon, 28 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669618254
