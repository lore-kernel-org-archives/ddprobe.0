Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2F763A
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 06:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E81EBC433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 06:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675923065;
	bh=84JwZextoV+eAOxTS48K/mev3ZNSJH2ZaTswBNUjARk=;
	h=To:Subject:From:Date:From;
	b=QXf8Iz2SaeB5Pnvh92PTegB3H0oGMKZITrhRTUYTLF1EXdfjlYAKQcXy96KlQaBqh
	 CQ8sGIgAQZKx/skAjHpY7M/8o4fCPx9RT1AmF7lZqSFiWQ2uZEEYLiUoN6ZhYcz97k
	 dcGkGEEMITZQpXg7uCVk9eplzu08e7DUPfI2dVDomGhPsBNE+OZIj/45IXUxiwaxe3
	 edx+lgDKHntjCI0C/rnP518m3BIW/yxvOimZd1thsNzH7znr5PlrcFlSIJWKUM52Ww
	 hmN78NlS+ginsXyH7OpuFAifcqG3Wgw0NiL2nqHNwRsHmlufWvmEIVjD0icYs+oUAW
	 S+yFbFvoEg0Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA690C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 06:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167592306579.21606.2412011448622396272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31fef772033e758d93867080884007a8f17199f913ccf2b956f3c33c032f9179
Date: Thu, 09 Feb 2023 06:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675923065
