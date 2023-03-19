Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2D9A46
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 05:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E3EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 05:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679202845;
	bh=jKrunR4xVW+Rh6V4AO5jvn5Bqi/R5lFuW6HCqHvCjSc=;
	h=To:Subject:From:Date:From;
	b=ubigzh0gqomDvI2C0LSWpbs09IxU3dROUHKfaZ7uSsfvppLj4MeHVxwMl7Uac4B0W
	 l5uabQa/Ms8N/99DY31tqScSWvJ18BnR5NF7+T5F8L8jEBtZKa8WO0ZlF3dTJ2RWBb
	 dM2/ozCf+48zFPrf1ZJ0tk4UOAW3lWMCxxSY3bQsA0+Enjk/+LuqyOqQ2uX69kzJy0
	 b/iVs2BjNO10gQai3TAkfxRc6aPYQXPl/N0sBQVWX0PWWbHOGVDIXFXZtwQOYjsFTA
	 Z2pH6ZO8YSX/3ri+tBwhGk6QspgvrYWSuA9VaLzHh0vRFjngFb99S23ER3cXprGXcM
	 FJ6ifii2hCwAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC198C6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 05:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167920284576.6718.12744971486977473359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47cbc15324888f4e36035021f9bd9a0e45f5a6215e269226f3508f3632196600
Date: Sun, 19 Mar 2023 05:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679202845
