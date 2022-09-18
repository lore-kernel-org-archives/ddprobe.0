Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77F92568
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8876AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663530653;
	bh=u3c8gTc7LzFJVGOBOxV0sRR8XqxbKBN9/oERhMkzav4=;
	h=To:Subject:From:Date:From;
	b=KgBGkt9IvYjQq+aAln8RK0LSNZDb+GhoIPMJr2/YOsDLUWfLc4MgEvOmkriXmjoim
	 xAJiJFcrt9ABWkhqL8F8bChOUf0d2K7KQV7YlJ8YhQvYra5m9vBsURgWmLVGUaMqzJ
	 D8TUdAzN0aXNwY5scL2iUF/7wKbPNlMKTlgaL2jH56siXyQwgqwL8rfwvP0RxuT7Y0
	 T6QaSfdltYOygfAwnU3ZB6eICFXsnRfLT/rtyNiHfbl2rxBJtgqa0t75AETuQ+unhc
	 7kdTXfCho+6Mig5U2gEXAk2b9ldDbIUHvey1Shyvh84nPlMQOQz9s6haycbm5OYCeX
	 Ed76QKCPw5jbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67631C6FA82
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166353065340.11230.6644192382503249805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9072f57399019212ca5e7d0db8b8216c05a873fd61ffa97bade53854a5596dc8
Date: Sun, 18 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663530653
