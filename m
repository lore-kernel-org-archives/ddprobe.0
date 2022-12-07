Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF955136D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 736B2C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670403054;
	bh=7wtgR1GOd6bTQS2IvGvegRGxxhQ21MBaKVqn4cqFOjg=;
	h=To:Subject:From:Date:From;
	b=tCNcE+MMfMvEW0KNjf3jieQ1z27lzG/TNqBSVU85YykUAjQx+cFDBmLxIBy2zhrIj
	 iqRYgFcZ8RRbzrzjWMCHqUM6gbFIHGt5hfDe7q7syXDgfdstZrS8tBI6R2DsPRdsk0
	 H8pBxR7+NUIHd0hxNy3lWOQD8siYU9ZZOHdKck4FoOv3cTCuJxawwmvBrSPxTWBpRp
	 jnPdzQq9oLlkG5JqxetRbvbDbKGY7Ts1joMvelowunZzKOregMiP8o7xYYhUkdzC/H
	 RorgGUbraaHY8U67NdHSVtC7OMesLKxwtL0JvkJge6YHvtVoOue063c2uYSg6DiJ7y
	 WFG8jJqGyEiAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565A8C4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040305434.8710.7378241845387738350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f21e6c9ddf3d2be7d762e8fac4cc65e713b2391cd704da12e82fc9f9e09f06
Date: Wed, 07 Dec 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670403054
