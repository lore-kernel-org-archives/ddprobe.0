Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60547AD26
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 21:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 030C1C433AF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 21:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677187506;
	bh=NoIOr+1O1O7OG73ZTh58LmE8i8dfK4PUtbVRht03gUE=;
	h=To:Subject:From:Date:From;
	b=rz1mFo7vUosjyEjSSMyMwSW0L9GjGCAPPQnsO3wdhcK0hALPTG/KqF9bdeP6rULOK
	 ja+0yZIRra68fDyNeUx4eYiwWJMmVxt+UHMmP+kbWjp82Rd0VzEBeCAh2L3FIBcN3c
	 6gw5Hl+wAG9hSk7O3LFAQTsZe5ubb5QRnziN2nZ1SvscP9kbTI2FXBwLhhwR3zP4xT
	 cvIAOWjnfzLgwI4uw1XZM/T4ldB1EYxML7xJ2XkVqYDIldZYUlVxxmE7kuSxZxghHM
	 NxqkJ/tJjVvjmqOBYRdVhPMNG0MhnABdkzUEdksNfg04iOs7JPXoyErbMBueE0KJL3
	 AHNDa84GHokcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0F0C64ED8
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 21:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167718750575.25071.4242608297158455990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04c16ca14e7a98b04fdfdde9929e2843380d4986ed52c07a0835dd62981e332
Date: Thu, 23 Feb 2023 21:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677187505
