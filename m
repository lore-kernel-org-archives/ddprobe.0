Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67528E574
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 18:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD20DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 18:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695839768;
	bh=JftL3s6KEtSgcIHMu0KhGFV/YLYcR2PSPq51ELjHTy8=;
	h=To:Subject:From:Date:From;
	b=McvzmerU4sXZPwZ4Y9QkW81RYpk1jKuzVS6eIEyoJ975i1C9rRb5txSRmqKN8vBFb
	 Ph4zZi9+gOz/EZl2NP8VEgoHJRoIwhGS0C4q000KWwpJ8C8AAyLEk5ZfOadG5hFsMr
	 9p9jw5NnudvQcwEZ4ZXT+M055q2h304yARIeInMbOydS7lTMqHiCw8K4NKHnmsQCZX
	 XhyKjZzct8SGK7lJbLESriaUAgMuCXhEbwqXdtsnUbfVkjRKwG3bPqJpJ+lr8PIYEk
	 E4SVJaA8OIuJ8WlKbLJmty4okgB0WulWNhHcXAuR8kTP9ee/729anIEJe6fxXddsCF
	 oWB+Cb1Fi0Yxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE25FE82CBB
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 18:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169583976870.18973.3766616150420349022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca3657035438b7de753ba1054d7cc2520d6b54340a99ab0c682f1fe47e25993
Date: Wed, 27 Sep 2023 18:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695839768
