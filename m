Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10827E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F02C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667301054;
	bh=Tl+OzYYmoMxPm8yIDuZCKPxtEiatvVZbX9Dc5m55QvA=;
	h=To:Subject:From:Date:From;
	b=YNX7boOrYl3M1NzFifMcJosGSsaMh24fzcHeYLKRQ3iGUA7bkPsOpkp5lHptLDRTZ
	 jCRSD0ASsCFY+qZy5gd9Y4frGdjUz9/yABhIQeSHs3BKNqBZOZladlGaaGie1yy11g
	 q2FV5u5jIjZMhYewVCwr2qdMJAPKktG/okiEG0+NvqfUnZG7Hhqm0DghpjKFTllR1+
	 lXq2No6SzkRuqffhgb/yM0/a1RjIojG9/M6vvzc5wPi6k+1UAxjjx/YSNgYSFT1cQu
	 BZrj8UPeik641PbHZFWvjw9McGemyzjvBmeir8skSzCVJF0KyUGN1SgoWRdUzEmZ4b
	 Zz2ZjgIEhQTwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F25CC433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166730105431.25313.2260303721738966911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d22d7c6f8cc0fd16103e3dbdac59f8156936bde3fd3aef78f9657074828585
Date: Tue, 01 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667301054
