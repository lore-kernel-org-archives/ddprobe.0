Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0941FC4
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77404C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662294653;
	bh=apCLIs6tIKYXzENshZwFrasXHJBPOL5VkG78tncY+aE=;
	h=To:Subject:From:Date:From;
	b=iCFwaosh+wEypTQYVcy0PfoyPUstTWfR+YYEeNbmNzxA7cgBq7qviqV09+YWa7yw7
	 ANSOtVH6UKSIfFWL3frQIWxemcfL9qy2CLLkbXDYRPcnXfb6Ot7LeO6FOnR3oxg4IZ
	 vkuVy2mW7CgC58D/hcT1CuTMjXNlBh0hgfCymRAX4y8UvZt/M2rHIMkxYV+9FhhfPp
	 cpuoA0BGILXd/cQ1OrlpQzphD/3qO9ysIX7deONwW1HJXkiERmg6LAf356rsmSbLXt
	 EeDxI6ycZz0/Twdq9oZKa0gc7EyFbU87AdRa7l4xe7nzNdy+gMakFAb+eNO0Fy3+2O
	 vTST3150LcUEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51358ECAAD4
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166229465331.7122.2129594314796084351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2baf891a97fd3471b1fc434a7727f1fad18b66c75f56054e0435e3541350d894
Date: Sun, 04 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662294653
