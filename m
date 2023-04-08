Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80DBDEDE
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 00:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 31A0EC433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 00:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680914466;
	bh=7j2I1+nKsDoAg4RV+0CyP0FbEzdcwlHwQXy8R2GqgR0=;
	h=To:Subject:From:Date:From;
	b=oa5rakGLHeg7fMjnkyRMjlP5rKlNn3fw2RuuwlxjaO78xwIxx5UBadttwobVLY907
	 fAvO9rnWbze4kD8pYz86iwXSUVTdFyYj+YPM/DqFA50stdB56pG2RLCaw7cbEDDhxd
	 72WDj8OVB341App/hL9EhhDJD8DPv+ZqvwFzVFHGOx7U0NXRAevpBYmcwNUKWuW+9R
	 7cEfUC3FNxqnDPSXWWaifVZu1PP7jXRv6GEqQccHcRejdoVY+C/uOVFeEiFDztCavo
	 IAY8NoNUraT4BaDB9EDQH8rRrsQLjIoCONDkU7Q253scXmqItUAihC2B2v0OqJQd9F
	 QIuG5SThfo/Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EED75C77B6C
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 00:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168091446594.2966.16020565889864646444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2661e08ecd3f09a0a3ce8136c5fc9bd2c4a0689b1aa6902c281daf8cde8e5eea
Date: Sat, 08 Apr 2023 00:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680914465
