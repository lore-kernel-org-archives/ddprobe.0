Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D941362C
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 798F2C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670472054;
	bh=XFijjcKcsN9UumoQ5ytCyb+ihMP/8nS5GOzA4l/SOdM=;
	h=To:Subject:From:Date:From;
	b=jVrYKCo1GpYMMaqIQ/n3Br5OVZtWueUEiYTN8nHGPlvpfGsaSezBNlPziUbwVLK/2
	 ehlaYoRpI8xI5fnKyvU9K9CJ2ATF5XLAABliBaDtBi1caQi0Uqo6YieXOUmrdc69L6
	 DPlyHFCFAMIZMrLjXDGEDIElmuXvfYW57DR2BtQWeeWY6S/qq625EWO0BESCGwpK8j
	 VKE3YqdAnSTIlOQxhz10kkZEh4OLoj5aVOVOSEEHcOed7bpDN9ngioZa0Gm+QEe9ze
	 /pWd0mAcI6qyxMrVeMBig7QZH6soXAmiAI54Bmnc50W3kd6s7tuWt9gZ6a2YdP/lBm
	 p6Pkwa1MZzmpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A21BC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167047205434.3221.6133340390999543081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f852153595140625e9219fc9f98788af32a1f4424237e7c6189569deafa2d89
Date: Thu, 08 Dec 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670472054
