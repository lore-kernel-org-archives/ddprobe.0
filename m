Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5837C2C80
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 20:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F40C433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 20:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691785988;
	bh=wDhDnBnAAjHWx+CovYYjqzjZLQnhdZcZvb81cg19iEU=;
	h=To:Subject:From:Date:From;
	b=u1zZOTQxycDO2RC1pu8f5FEUQQYp5E0es16ps4V5uv2AU9wcEaqUzXa3kzWw22LUi
	 BmhLS21aRpWtPLw6+YD+dRxAmHRMZHKP2qeYn0td2VWa6Y3UlIZMrwS2H8V1GkHEdA
	 VG7bmEcGPt/1NVCTx6moe2HomZ32ZWAvcRdbPGQ6yUI5QsfWVZVA6IFh+cSQgZRj4c
	 TH3A4BgrtFo4O6CVGit+JpEefcpGivTdNaNYyGgL8GYC4t+ca/174wsJZplMEieHcW
	 +XwpFqxC7Dl6yxHkuGek0Pg8aefDS3FhT1bX1YSDFxCWgL4ir74Uw/gon72EuXDpNO
	 BfoJODGuNs0WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9784C001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 20:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169178598874.11294.1366928836330879411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb7391d98a1b5f28bc98f275401bdd2e14f35ad3830c6d1681cd7fd5baac87b
Date: Fri, 11 Aug 2023 20:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691785988
