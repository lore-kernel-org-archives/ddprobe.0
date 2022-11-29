Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7912583
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E11C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669724454;
	bh=i/PgEZXT4Eqc6BOhqiqybqL1e6UQqSJV5EKU21u7vv8=;
	h=To:Subject:From:Date:From;
	b=PA2KYZM1RE/mOSFYm18zPb8ozZZ6+9kOSHHNtFkOCOmNiWyvCl+3q6UqXO97wvBmt
	 hF5Oh5ch/YOl6MGfDSE7BmLdQEF1XSLC3yrQGHh5CsAF8ztn1EHLmQMH/6ouKBb+Rv
	 o2euLp+XBiFCyi2P/J7C2lmJw5wd1zMVOhxE1p5UtqoBb/dk+ckqmbLINZq8MQoq7s
	 lz8QFSnhN3AisgmoRPxr6FZLVLEkHFLqOOb0cK1eGPn67OztUCK+dsD5Xxf7Nj2wgK
	 w5fsYmv/L0CwuMZmrQ3oWOH/nztwoUP5OXJvGL3ygeJ0cEwqLKamTO7GYnbQ+CdKUo
	 N1B+J5Uze7AdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A3DC4167B
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166972445435.17569.15975258567184698508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716be17372d277f0b6e7620023e6b656a06a43f12d0352805e3ad98c82cc9892
Date: Tue, 29 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669724454
