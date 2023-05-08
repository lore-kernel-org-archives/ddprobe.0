Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A74A5CB0
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 04:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EE10C433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 04:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683521286;
	bh=b/2UwFEVc6bJFUSDOdJEQ24DiAwDs6gYBSbS4cxWDbE=;
	h=To:Subject:From:Date:From;
	b=KWOywJteqcz5iQy3qe2SJXpQKXPjO0PUK3+saYQCmiWUJ9qYQtuUyE+sUg5UfYLvV
	 dmH/BFbPSy+30UESuA/o5Ye13UHFEcDkFQUtP5Uw/3QikdT4BfKzORGiF2jIOId/rs
	 Mjc0OLgrWayFCuF5IKj6ls8Oi5V+3JdGb7rliTUXtmI8yotJc7r8wLpJgrkdvokAQx
	 WYTVL+5r4iYGr++pwm10itxWyDKmCvNutJiroYosxoHlJO67IZIXbU67whYIGJmRle
	 tfqTL2lUntlABO5ptcWK5LsQGMxIy063aVY4BHjbQA+ObfVqD371aOYe8EYqIH6Uym
	 +SE56gpSWmqJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB7ABC77B73
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 04:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168352128577.21886.1278725981925133377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3c07b8ea6c5f27b5574a9d865a11a39e0f8bd797203e5c784d24ed40fee4e5
Date: Mon, 08 May 2023 04:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683521285
