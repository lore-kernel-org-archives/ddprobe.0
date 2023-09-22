Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E5F2AB4D
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 13:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD0CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 13:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695390308;
	bh=uQvXc2RyMrTLPTfX02MMn9oTPSDsfRkxnUQJMMrHOjw=;
	h=To:Subject:From:Date:From;
	b=eKvUlmfLm8BhJroigYDuh4c7BSSX65b+gZ64gPAIp4afJIusWQqxoPVTQag5cHmIP
	 sKKb40k9dBb/W5K7bfggcVbY8+JJ5tot1PtM5bS6ZM0KWaQQG/LsZ2YlyloLYkaAdX
	 O0eKzgITojzGnVYpp5yLoT/q0ZQ62txJ0GuYLdLdFAwkR1QzzhmQhmfL6MVluYf73Z
	 5PUFRCK31t3JCpFsyeE8Dk5l8gNnNyvNkuUhuDn2y6EeK4jjCj2/GZVNv3TeAmaDJi
	 guDiYZh/+Mvh3e6iuNM0W5WXC0G6iwPW174NSk5XSPQhe1rKalQSu5r6eGcz8zAhFs
	 +HVzXm98chkoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4D8E6FE2F
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 13:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169539030869.16149.10178539962665423744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5255afbdbf2933bfc8695f028ad307cca825c3a102e98a4f2c3055d8e9da74
Date: Fri, 22 Sep 2023 13:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695390308
