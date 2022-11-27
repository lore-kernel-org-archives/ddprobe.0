Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF19C19B
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AAB7C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669539054;
	bh=gkR6F5nm3Vitvxj0Ey3JLHUPEi3vv8RRt1GeDxamT6s=;
	h=To:Subject:From:Date:From;
	b=kH/84el+Z1NJ7C7N4xAKbLtdRiN9nY/hsaXxdau72f4DEBBO5eDarr5nuMJrPhCD5
	 rqV5I2jS2XHXPICiz/alnY9zKswV0z0oiZSOI+L4u9cWBq2Um0NfbiSQo5797/ZENc
	 DST1fh+jp03BL6+gP4GIhCbhtT8rRAvGM746qMBQGhs8uGy49OzccYcEraqw7wAwdH
	 uDqXmaq8PQeWPaMWGZGmlUbBH3LxsxE36NuGwUm8yvX+qGFpANq1Qcy0XjuLEWv0Y8
	 erCHE5ky5OUElendEuVUZlPdDfmBPi6k2kssgkwMSKDm4fkPhWIi82186MFhWCt5/D
	 l/ueFDFiUWP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A09C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166953905433.9687.9252979801224028396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5c11820e3086e294ed9607934239f731f786e98d407b1242d5c98ea16b1806
Date: Sun, 27 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669539054
