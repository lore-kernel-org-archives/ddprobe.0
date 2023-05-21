Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2BF29AC
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 06:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E051BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 06:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684650605;
	bh=sWm/zo5N/r0IoPhH0oMQV8xG98EK6JyM2mhpvmG0OYU=;
	h=To:Subject:From:Date:From;
	b=iyCc/HnD7rR7zPjxjG2YJNXtUdT7wLb03dWfQ8cBZ84pGxT6RycBTBoJ2O5EoK/Au
	 88RaPwWFRF3SQBLxO+aeYkpwpkzMEl8sHB/bFosSTzyew9BTOGgKcrunmhUqkbegqf
	 liIn2h97hJ69r1vMr2M6sWN6Z3g3vMsT0ikW7SXfktbqzNcY9BqiMhg9CJT3zSMiGa
	 jtQ/1NCqXNXO06aUUWA8ZYfUf+frxSnJ72tuJykotKc6b3NfeALYukaIuZ9m6aS1TQ
	 BpdmjoIN8+3wR3ijmJ6R1pp/K5ld9SCfT6oG22r2pKpZosGJ43TwXLj1lKRRfD5LBi
	 0CCaPbR4RXUjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF10AC77B73
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 06:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168465060576.32561.17937196485634344040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5cf38b9d5013c06075ed6cbf71aa9278a8dbcb3f3b41557e403f9f8e920df85
Date: Sun, 21 May 2023 06:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684650605
