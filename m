Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510D11D2EE
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 17:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF8FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 17:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690823528;
	bh=gY+5fNcSFxfXKxMohIUyQzo6rmpJO+Lpv+OIARjF0OU=;
	h=To:Subject:From:Date:From;
	b=Ahd3XeWyi3iE1piAUkrvxB76h8PzFR456bKCI8QUDerZah/G7esvF1+PzE5MG/SJj
	 Vkrw2auCiYa65IeXujZhZgLLYj2S646aScM/KZrwn6Mf69qHIhrUzzgoS1qPzJo4I+
	 2du/BesbizPDPJ4RIW4n3Gytp9GH6gdb9fBBKJ3roTFDTB9zNdb3lIESvXuo2afJQY
	 5mCbmp7te2BVg89iOzgTG77IgoPr/e6DGTcJfYlzCJ+S5IwdwQr5dX6JeKVSi3S8uR
	 X6GWY92R7a86VmxVQumpMvA6EFi/y6XhJYvQ4Kaa6dn2Ex+YIdEy+XqcIdrM7rYz+7
	 rUcCHPmGgM2kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBCFC001DE
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 17:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169082352871.20478.7389254362195346642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d984588a902d2ec3bf5620b20f7f18f522a76006851f35dd02e303a17ae4a441
Date: Mon, 31 Jul 2023 17:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690823528
