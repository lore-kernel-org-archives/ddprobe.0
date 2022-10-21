Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBD57E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED3EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666312253;
	bh=rlKouoqtAEVJ9dRRejhOUbNweFV4a5ADvnCsIU6sX/o=;
	h=To:Subject:From:Date:From;
	b=bOtWBKmpzdqq6OsnRSDMSYYyoNrf4qts3+sjsmURoBGuhT0CBewSQXF3ihJDa8RKo
	 bY2RzZem2dfNizUJlAi/ME8sojsmF0p+NLAPmntxIF79XFD9jda8azBLZpiqkbIbXV
	 eQfCy0c5YU8hF2UF0L0c23SUXYckcFoZe2vK9vM9kNCrY6KWPA9sQ+9l+vJm9qlczH
	 nCvyPLGXEPNu4ERSYo50aflEr6P/u5UjycATWS4ZGB6/bI8ZXaN13w8yabblSblmDr
	 LnmD6IRaHiY7QiDci10iNus8ekcW6FPx0/WA3Poo3IINgC+QbG9PAN0ZhLFeEBjKrC
	 kI9lCUodKWaxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5514FC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631225333.23855.11375826831063520800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d6e841817405a4061f9713e29278a132a35adf4bc56c7c3cbeb8d25eb4d5e9
Date: Fri, 21 Oct 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666312253
