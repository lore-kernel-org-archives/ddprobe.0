Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B78033EC
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 11:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F13B4C4339B
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 11:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678793286;
	bh=ReOjRkHUH+aV+5JxXsIGI+oWTmIwM70NDwNX/xtpthg=;
	h=To:Subject:From:Date:From;
	b=X9HPH9lNoBfIVBdpFHKyJ82KcCwGhZaVUASnWRJEaDAfMH7CmujpBsORHDUJfIv9q
	 ZR+ZftC9qMvQ2CBzJCXoibbHHRNZ4OWIpoKXcXzx9eHPPvbaCe7LKaSCSjnSblOO0c
	 OYFhky76krOHlvFL+KarVwGSp70BBHvC21PYpLyN8DpJknu1PkzdHlW3nSKvKPk3lW
	 IV8Zdqbf1cw4TgTbFvui4uZbV6XL4vGU8/8QIcnPQQ921u7iJNoRU/kHIZ4Ck+rFV3
	 UL/1yfL2lfYMsfJ4pQwbNR/6UqULACWYxo9yXc1szYPVK4zqaS0lwovlkdOZ+hBVp7
	 sf7rvB8xyWtnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE493C6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 11:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167879328583.4398.12360997116915146463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a572e61f5898862b3bbb8b9e61d5c87695f213caa18020bc945e14f2a7ca9093
Date: Tue, 14 Mar 2023 11:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678793285
