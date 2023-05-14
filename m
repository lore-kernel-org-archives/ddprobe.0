Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DE57E3
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 12:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E61C433D2
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 12:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684066145;
	bh=9swNgj0ypNl6r2fg4oRUXXuXmweZb0TuOzlHHUJBGx4=;
	h=To:Subject:From:Date:From;
	b=oIteQu/F8maoLtbNOFtUetbTKEhDSfl59EQrxT+z8wahU5IY+/af1XOwKWORJwsDR
	 1O22hmUBk+MkjHqfSzO7elB/AZBIeyyxOomBAIjx5YKadzxa5R7COOFGvMoZYG2/5u
	 vbibhWqkIhfNIEFvhEkRC7e1U+zJoW4JmspJz+5UY80B/dTVQIZqnUbFGmGmYkP4RM
	 Tgq9u6g1V1am6JZEFDx9jjrkbDHA3C+Fm0QBzIHyiVm92Uz4WgeVQzqPjeW73dSgRM
	 AhYm0OC1Cye07G/62oXmMq9vcEpw8hdpyY2dc1AW750T96o55ekUL348aS8VTvBY3G
	 REE3r5dQ8zZwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8316C77B7D
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 12:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168406614574.1775.5283511090754655702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adba276a39b4db33e04fdc5343253d01846f25c1feb39901e2c7180aa476ef45
Date: Sun, 14 May 2023 12:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684066145
