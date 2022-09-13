Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53837B
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B02EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663027853;
	bh=5l2V1b+TeL3IbYz6EfaLmyWPvSiiMXwnLRlZvXXXErk=;
	h=To:Subject:From:Date:From;
	b=IvUsGuwCmd8yKm/SXPOzVHUI1C9KUa/VVBAjiZ3ve6fStLaLihkiQLPr/UMcq3Ih3
	 4hh4Kv7pW/VQxPrvsAgolXGT5tCSi9HHfotYBdbq6SePrk3Cd7uXMxN7fEyHwvaC8g
	 q70+DNAxEb9/GENJeS9Ywa4YNAJn4YO8AaH94PQ8dd1ADJOe80u0cxDNfr9I4FKsOf
	 gnlN+iPjgT0xMta8FD8+SbkvbKt2MdKl5odD5aLhcvoO6SJh3W2qjFeatJX1HxUVcN
	 mQdE1B0L1PQCt8OwoqjErpIgxDeC50GMqTj3X++iN3Qjrg3l0sw5XCGQte955jQhiK
	 +R6OVeHK1u9Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BFAC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166302785334.14910.15161690803607240571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4123dbed452032e9ee94f767abc2d91e7e91b6882b1542f9e81d9b8e9e8573f
Date: Tue, 13 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663027853
