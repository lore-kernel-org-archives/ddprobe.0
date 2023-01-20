Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEC817F7
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48D0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674214325;
	bh=Tt2tb74wK6cJ2yqQoZuqF6p2gN9iQ2Bg0Phe8vIQoAk=;
	h=To:Subject:From:Date:From;
	b=MOgIdbY9AZ0Le/fiHutfb4bBULGGbCZt0z4KECWKJZgXrYJxly/rJm8dXtdozZQMH
	 8M8HZxIib1pMEhgAoeQhmfJMgAFVPnXArZv4/Wys6mOF5LHyyEh+7XFs5kPXSwfD3T
	 WUN5L99VhVdgQz5smEEVGk6SZm3QrvoCMVnWenwu0n77aUsTZfHxfr+QeBZzHia691
	 H0N9mW3ybbNinqoMg1wnOhzz7Pm6+IwYZzjtt8N+qa6XTIkZac9KjgNPPaaScQ2zdb
	 j9HccwPpaijdie5RFplGnFq7xu7FEl0iJ+56qeSjSiX1h1++oJt0x47P7HjgxQDS0z
	 L0zgRFGkOOsvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C31C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167421432574.8592.18413419168163369030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ad0619b129b00832f3d625baf4c0f227378ee22f9e5ec788c593ae0ccc7e44
Date: Fri, 20 Jan 2023 11:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674214325
