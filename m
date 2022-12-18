Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCDBE806
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC8CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671342687;
	bh=ZhRqRY7OGBeUr1LcIBx2E9m2LSHVjKq0BfsdROBuB9g=;
	h=To:Subject:From:Date:From;
	b=CV+xAqDXvurKOCXfrzFL/V1y0rjmOzHFgZ1cc4t5UwCASIUCO1xqWJ2ABtJL79jM1
	 WxofjlDhXYZ7TajSGXp5L3OEwTxHI6QNIMYKyPjrSTqgHiSW0NWSfq7txAU8n86izj
	 HmvnTb6bqmU15/GBKJObR3ejMxtiVkHcEG8dwzqE7QwOWoq3QAa+sMQ/anmUJBMLyq
	 bcfLHkcidwWteHBOC10QsMuSHe0g/a1ZEwfVeZ868CoyQxNceoXVJit6VoFYCN4cn1
	 ngDr8QQs/PYfdvjGvBp/4ZP7sVDPuKsGw8WaJfQK2reAYuTmKP/0kt1JarL03FEHTS
	 NApGETDIAhH6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62461C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167134268739.14302.4533713315971628382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696d4ef78e893c44b482435d32a41ac7ea8bf39a4dff68b7409842f01c82317b
Date: Sun, 18 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671342687
