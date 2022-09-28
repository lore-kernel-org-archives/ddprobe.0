Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B02ED5
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C950C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664371253;
	bh=0aXNIXF5VjXTnOar6RKozjMWpzlRtaW/Iaq9NGMawsU=;
	h=To:Subject:From:Date:From;
	b=MWSa7I4HVhGRnVadEQl/Kez0VEtzwJq9obwNFT70J+k+FBpeRxpTBPorBanNH0zhE
	 SRGRHDuaKX4QViH2WpWHyPNqTn9rvGxbVbjAflmbv/ibFWkr7tRwMMCKmzwe0CylqW
	 CVgwvr0yDUrB+3MIYjBCzKpMxZF20NxIRblSuPD5ZusN8rk0Nvof0L+s0sLHzq9xud
	 doUSq8ZBKOAsrCZHfhRztBaH9Sk6jl6B75d7JUEyJYUBB3JQYetz/NzWY742gb0qNG
	 zSRf+EeE8LD6EgPkLRtpUi7ycV73BQJUbGsUHI/ELncLIvWdhqjNrQbENPsaCGbzgQ
	 x7B3DSSw8uO8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AE4C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166437125332.1205.310341897730540480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2edbc3311f7e46bcc2a22b14686dbfa7c51084d6105861ab78a72fc8ebf72e3e
Date: Wed, 28 Sep 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664371253
