Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7EF863A0
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8119BC433D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667496054;
	bh=R62p0fab9G30EPNGwMuOQ5/41DHxnJjInaq+NUnXVFA=;
	h=To:Subject:From:Date:From;
	b=BE+yGe534vSM8pNHr7vApjUXIcEKixENinpD0Q2OsLLq6uyk5ZQu7hcfgQ1bo7oMk
	 oP3cho1XHozTyBI4D/VN6pbV5GLbKxeOusFDiu6BbGVy3qayJky7FIJauXH78iU2XZ
	 A4Ex80jsKNFt9xSIDk4L81UPQbN4aZcwrT1PqjRsNYO/Q6yXYneXEjqVUX5G+LZtdQ
	 xHSYGVx03GBuRI5HZxVXMBoc1zgs+N94KK4QUKp8phDQVdkxHnYEw3+C01GllpkK4C
	 LkKnAQ4gLOA6FhvZGL+D+KzPe6fEUbJSVuLFKYZ5pytzTnjrPTLWIUzhah9hrSoD5Q
	 2pbiTCEI9mLlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 688BAC4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166749605440.14601.2238819445734718519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb90e6796220977aefbd8d0da1d87e88a196d8ad5a57c353653a6cc2a8b0f85
Date: Thu, 03 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667496054
