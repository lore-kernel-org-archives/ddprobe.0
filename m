Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314B117F3
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGbcQhXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B04C433C7
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699067896;
	bh=x5zd+0oYZ4D1cI2oESGxliqcqSfliQ9bPQ+Uhjy6BuE=;
	h=To:Subject:From:Date:From;
	b=XGbcQhXZHUk4uSy4VuPGGKWJAex19cJKZkiXuKtV+1w9mVwuTx5rzscJHhsbCEaKs
	 LbScHYCOR0QD0hxNFsJsuhMOi6pJzJa1O1zqWT94WKKNGLn1oPDdo62G3A5budRAyY
	 Nr4p6X7rdeEIQUKzRJCKFNrW2qAPrD0t7rwz+snPLUsruj+oLRofoxDVaCyryUn0f7
	 UCm5XeBFMZE6ix6B1CpM50V6tcS3joAi7rUSCqqw+cZgQPHUiXgvtciacI8uDe2ppI
	 XrgMpULN2WZG++dgP7/Fu+uNW7iL1st4flJ8MIWgfeyOsHRe4c9x0elw4IVAiXgBaG
	 OE9B7gRaZZ70g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6440BC4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169906789638.10211.2988101974493244265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95e88d80e53e12ea4a5982e55c3c5593defdbfe5d546b1b6ffa9bdca528ad2b
Date: Sat, 04 Nov 2023 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699067896
