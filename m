Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40293D74
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8571BC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670592687;
	bh=nPz+BzMYL0kUzyRdD+5uQWblYfn3lk9HuCstr3c55XA=;
	h=To:Subject:From:Date:From;
	b=CCp2Uq4ojTa5evNXScy6JwWhO1DWltvZNipF0YoKlxON1168dmR7kvE5nIEnPOdD2
	 6UHd+27IKUePLoQZpaUIVmckXZ//nNRrVTPdET6ZMwvB7LP8iBs7NVGvITGVp5xQNR
	 1vBipX9euSr8QEuZDLb18yMxcyRyIIoAFTGb8E+0rCU9RSwLi6NhMskLq286m/O3E3
	 WWNvBnxHO6IaKJjYkJn/HoYUyW48iL582BT+Mh1diQoLaPLeZeaMvQJmkLTEY70ff9
	 oaOMvqif7BrUgzgPdYAUYAsYzAQEH3RUv99bNAWVfYW3JcR+5YsY8RFKb/A4djfWud
	 UZDPAJszv9y0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66991C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167059268741.21833.16145266521591504649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4357616879b57c67976cd13b5fb02367add9855ec848b565e562e836750008
Date: Fri, 09 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670592687
