Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BE43D6E
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 12:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B844C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 12:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661602852;
	bh=YNzwL4HUAxDdkxR8BhF7tLbDRd9iQFBvsqbpz3EYN3Y=;
	h=To:Subject:From:Date:From;
	b=uvz31lZrAlD6UA9b8kSO0xMYZgxWNue1kDIyQy0P3i4SlXtEl8l2QpCVAkcsZstUU
	 XKp8rAYwv5nBBzbnZiWe9QkP9VhC8npync/Ls73JsFigaSEmPPHpsZDYw30If011G3
	 YTgBtIr80Oaa+bm3W3JKXkdqTE/5cdChhpjcixGc4mirP3HcRF0nPuBdr7BwTCHcbm
	 roHUYvib6JMK0kRzkplgjrNlCd0oA5UBh9qkUxomP2Qe2gwgfcm3Pa+rLiiAU4tmpZ
	 w+XCcOttKVGUaQJVzJ9OQJhChQuGeZX2c7STDwrZPiAsZVXP6OdDzWbhDmsptFcvLj
	 JiO1bTgsFgAow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EFE0C0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 12:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166160285241.14335.10109768388078300466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4612341201cd96e1aae4645a3951012ade0c1e24e4f14f621a9b488e6a481c54
Date: Sat, 27 Aug 2022 12:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661602852
