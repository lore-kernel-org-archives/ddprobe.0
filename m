Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051C9379
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 02:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE8DAC433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 02:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686794829;
	bh=KtFvpOUgMYM2CFnWCP9m2GZvA8jjW81T4JN0pqodXEs=;
	h=To:Subject:From:Date:From;
	b=c6PZZ23i5gs21UbfFioCl5HoxPA7Q7+Z+Ws2VJKufNTMCmxz7vrZ0DFFSH4E8T4aB
	 sga3VTyR6vJjT49JIx96cmrousLzADrc4upAxYjku9VfO5YE0gQf+wDae8WycxkEcp
	 HZwoCcHVniBVjCeA4msTzB/wHKAsWwIUYogxLSCK/emqnDctX8CvlI16NtfDJhX3Dk
	 1vZWtipYeXy/7Sdz5yl5J7bR1R25aKUQ85zchwZSGVyXy+blRQk7+/BvoRpQ8Q3z6b
	 uZKcKlJzMm6zZOFtFSvz+96gpxZcmXmTk+fInt/ec75d9WyyO0YKu49Fk9BQ9/ygeG
	 dCGul2Fw9ZJvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC515EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 02:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168679482880.23703.4318418118523121954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ee08505269c68e0a9a9e8a655be61c14d7a2cbb073d4eb4355952e2d3c5c59
Date: Thu, 15 Jun 2023 02:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686794828
