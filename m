Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AAB1DDED
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 12:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34E6C433C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 12:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691670188;
	bh=IzJJIvXG7uU/uwRZn0CdzaF6q0gZiS3j2H7Hc3AzAJ0=;
	h=To:Subject:From:Date:From;
	b=sAoKBv+dJwj98QwWGe8/BY2/LdpSGe3iy+YzW6wrjWWfwvJE8xP94lpPkxdUCID8G
	 SkoA17VMNOIg3QnV8k92tfLAdcf/Rk2M1BqTOYduv3p27v1Fb41VfKAMHYybIyFaWm
	 nYf2LQTqPN529olMNJbrs1WpWuZVFIYLBsfFzx2KB4LQVzzh9vnShvGJbfFTCBK8gs
	 lJ6EE4ipNGk8CxHjbrbO5kpAAPvQoIYxTHSy/Ee8W4yS0BqdLTKch9xWG0S8TpmD9V
	 ruz+7tWkMJC43ZRHbTYaEd5M+EF08Za26dakN2t1mYST0pEHXcpBRYgqqFajsUJwOj
	 ZzIwIIwKacRow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A53C001B0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 12:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169167018868.304.10352645539704870996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b9752f4bf8e4e1c5b581c60050c12faf08eafc50da80fdb32b86ee4fade2a9
Date: Thu, 10 Aug 2023 12:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691670188
