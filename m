Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6204B847B
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 08:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF846C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 08:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695889568;
	bh=h6XKTFifm1ik+yAaVHJDYRKs2k+lNJY47e+ye8taXBM=;
	h=To:Subject:From:Date:From;
	b=ITtDzJTgIPUurjMUVfBzQvvQmoDU9PIYguDVVDTCEra2Fq4Dca3bP4kdyWdNElkHz
	 9y6/utBEf4h+t5R1emPZ6JKpyvHA9XPnqIjZSWF+TsQqXxFT9nenRSZeppsZZwc+7F
	 GwTY54LDeVSRikV6XVVdFYuB1eN+t3I2O9Vlyec19i1zfB2AqbIrcDcpWdUBco50/S
	 WCXWMcZZg847vTAqQNPZaXS2hWbe9saMjzeIhnkxHLOgCHkty8BmLjxIePc1CF9KHk
	 /oXzGaYsC2l53OB/7hgHLdA4P340X6Or5kTlY7dV6E+kt4o++hQVQ0MkOtMNZzTOzR
	 tjf+8ukntf7Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAA1CE7B0C
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 08:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169588956870.30901.18378267958734326000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce71ea3def45cd75ede79174243c96074fb1b09b0ff189cf7d3735f8f74e34f2
Date: Thu, 28 Sep 2023 08:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695889568
