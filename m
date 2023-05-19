Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF1418000
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 22:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD607C433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 22:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684535285;
	bh=34CcQqwFVUr9Vye09WE8j6O621L5r4GayAtnCEMJw4w=;
	h=To:Subject:From:Date:From;
	b=T+ewAvhyKxoyC+7qd8XfYkGuI2Erk07oiOjr6nH7/tO7l+ljlRPJcQRSum7iJeHv4
	 IMlR9KvdPo4q7IsO3Mq2jtYo7nzQ4S8Mt802d+msYKS0FT9wix5BgVkYEZQnj+P3ww
	 NwudnxKMbywdp3ZIteZI66GS0p18Alcge+NshG33jv6ofl3AatqP5uEvf8cbsdvr/V
	 gQk7BqzELhYar0qV7doJObbWzgy3lT4fpkyNWWfo8+aHOA80IRRBG/BCXo6ocyCrno
	 ROLHsKnNj/bgTxOGZ/pihffOzblgsz/8tWIKlU0JHf3dUCRA+aOmsmJ0gjGpmxaGaX
	 HtF4clRd0Bduw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3DF6C7EE23
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 22:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168453528578.30167.13075698661060453002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda123db3f8d679104940821b497e1c3aaab88aece3f6f86d10bfc3999956dcd
Date: Fri, 19 May 2023 22:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684535285
