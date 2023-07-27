Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A714185C
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 04:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C615FC433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 04:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690430528;
	bh=Cmf4zVE8UBT0K3BMj8pm1//B+7Mrlb1L9H+nWO5mpdA=;
	h=To:Subject:From:Date:From;
	b=jkVwle3DaS7uQfTffZm/Dv4rt70B9blWkq7VRgHe+g7uVEdBcXYkXFPqAkpafE2TK
	 KRS0530qS/27j3Gp6CLB+OpijpyAT9VJMeKxogWDKg+M/uUb1VcutS26Ve5tcQ7ZsE
	 Qo0q7JPYOERS/zXRy7GDhO6Y0lwgY+/7H3sebXvNZU3e8xwV6D98dTWhcuPvBdp1F8
	 XNLEWUeSvYqYJKyU6uq1/pdw2f8EM6WCamxmNMcut13uc4cLRF/r9wNVhgH1GqBUJ0
	 BV0yfYbi9xS4Hv7jdLGf+tRZRDDMvyqrK22WYPBqhONWyApuKBOAg1XU7gUmIaZnVE
	 gP59egDOELSbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD880EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 04:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169043052870.26767.1446528072903464373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f519a22945ba14fa451fc7d25fe472dbaed1521e0446a5853c5c5c0247aeb3
Date: Thu, 27 Jul 2023 04:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690430528
