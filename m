Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B68806
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E044C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671344487;
	bh=4LJulo3zVfcVAjajc9Lj2HSB0uCXoJ8FGcOiFAxGrkE=;
	h=To:Subject:From:Date:From;
	b=ODndLzJUOLoSeozQK0CdhpizEqjhJnvFNZ4368rbRSnTnXMZpW3fYJWkxiYUThG3l
	 7KiZ7ip/v+mRDjg/4WPSXLimKGSrK36SuV9myu17tpR/PVHV5/04A2eIcyFzTsaAbZ
	 r+WB66uCL4xNXWF7Wtb5mt++8URLG+11mdaBTwVzmZijFxBZ3vDx9PgXLGyftRORWn
	 x8dojne7PRz/TobnLdGixZ7myxDEreOa7S+aj4pwFT3Nhi7j9VjgPksHf+woK9dydm
	 uO2N4+i4e1bb9o3nL+dxzkzQImDcZ6s4+9dDdVT4d6xmQHP0AsHPYefJEGSj1umr8M
	 0h//0ekt5o09A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63094C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167134448737.18522.6932213087266137635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3089ca8c7cd9160580b3e90b62dda63b3b2cbc3b572b6462b7e5fa7877f5ce
Date: Sun, 18 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671344487
