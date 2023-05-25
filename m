Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2746FBF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 06:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E32B5C433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 06:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684995905;
	bh=8Pf1BoPqzHaN2IZ1b4SWQDAqfxadTi+evnWn+DOim78=;
	h=To:Subject:From:Date:From;
	b=eQu97JJrMWGrIdl80THr1vUiLmtRbJSgiAwvIup67hr5S4an3mKbEhfY6xayqMj9D
	 UmZXXMsY4ydOQhlSJKu5tOt6xmVbSE41zEVC+alykGEsrRj1xh0wm+zf2+yMVToVcQ
	 xooSLXdDrcdrAOz5zRr8y0MpQ97b1jb21u8OKbBmheSPYvzrOC93zE3qUfk+KAXqWf
	 aWw7FS2DQ4X6HPKQWmOXp9p2JGMo7SwyW+BXIEBsitGb1KGjzQs6UcAb/f4vA2K48E
	 KjxWR9mJM3lqiEIAQfWg1SMh87asf+qRNZlKC6U23dybjnLhJnVb3z+HrW1a84a7zv
	 uBoQzusYUK8Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C52A0C7EE2C
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 06:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168499590577.11007.1885039817662984754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c13c8d83a56ba2eae330530ce14f171a70b80be7715b4d33b586fce0b31c397
Date: Thu, 25 May 2023 06:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684995905
