Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1718110A1C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wxxwt3bo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF33C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705368496;
	bh=ZYBUrpupdRpLutayStxK+ayGCJNo7a/nysmypH2ZbEE=;
	h=To:Subject:From:Date:From;
	b=Wxxwt3boM+8Y/Vzj4RWF3r7ivLrAz+yB3EkYL9voTqs4JdWtroh2cL1pzM6EBZVFY
	 JMH2n+NiGSg7XfEPWRRcxN6hiYC4kV9hSP7+1aTpQmbSB8VDmF7ewGhxwuZjND6ElF
	 yByR6wos9Am0EhnL42D1otVyL+GlOq4gxBynEKAEi94urKno77G7JCdIFXnbW5E/Th
	 je9d8bI9F4VkHAwoPoMCjBEJqsssIx/DR/awQDspW5wPI3FwUSMYAtoCt9ikQpFPoL
	 aFF5m2jrehAxioUvBaLq/uHV7V+rdNQPuC/kbB0vtb7Cq35SF/gLWftVydM7WISbOq
	 3FYKSqOllsLbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61914C3DA79
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170536849636.24477.13828812468335727279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5cf5bc944c9257510ce60631ba3d0b2f10101be9d3b1f530d0e71d8c26c076
Date: Tue, 16 Jan 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705368496
