Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CA01C15
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 10:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C79C4339C
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 10:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675334765;
	bh=7NrzGHU/YVbimoYHM+D/HlWmuA3C0hZKAfQ03FP4TaA=;
	h=To:Subject:From:Date:From;
	b=m8pMa/rGC2tLjCX6r84wsBQIEobPzizlAdHSZkpXt/zY1VrLBLqp5jMUqOxl0mPm7
	 hUjG7wRqFJeMJr74HrOKIRMnDNPPXE0oWxYWLSMeW1WggGQFzM240IfBN7tI6VSeTs
	 52u8ko2ahVl0knlkoiGAZmwWLRaTmPg4QtrCzr72rxCPicMa3pkJg41FiEUr6Fi+Xx
	 ddwLo7L8aj0nzGFb3UeZkSkA9iHBKBxx6SFxUl2U0uSSD/o+gtTGq6ACI0BVErxxPd
	 IxQevDbO+XnXB2zqgC+kVMT6l2eIqaZ9L7sdH0JWvNe8e/C/wjfQeryENQsdgw0i2f
	 oyZBld4Fn9NBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91C6C05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 10:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167533476574.5740.13726714292675951201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da2e3b502a5a2602e81f7ac8208eda39fb0762ff2c316573871e6b6d0bce0ee
Date: Thu, 02 Feb 2023 10:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675334765
