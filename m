Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D17ABE52
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 17:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9AEErYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C4BC433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696786628;
	bh=fCDL4q6v0k6f0ztBEV/mbmhA8fmcfSWBY+ESrmGNXog=;
	h=To:Subject:From:Date:From;
	b=G9AEErYXJUG3M/o5MiatJo+dBfeOlXKjGwTaReG3KZgkAYPuNrC6v+920v1w4JkPl
	 26EJkZQCyQOH2XksJonZL+RB/pflbfFCEcyBUQK6omQvVjNh4kyR0GefSWDHmn9G1M
	 x6eORCzkl15nrP4TZAx9H4ktOvmX431lSCosgfmcHunGiwM5XeUr+jqfZQ7Wx4uhUD
	 k6K6Sc2Ev96RXhRwZXvDjqenq8TDJ3Y936cBBmRCxcNkoPsAO+znFDwM2GykAnVSIa
	 hIWdA481Gy7ltGqkAHT29ICR2MLrG5Rrquqm+Ph+Fwx31DXGKKIB2UHTFFXjd4L4r1
	 TGL/9vi4XfADQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE2FE95A82
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 17:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169678662869.2818.18260515782729262359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8d74a8ef0166261cea4a57de9c877f373f80b0a30953501a95bb6d9fadf94a
Date: Sun, 08 Oct 2023 17:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696786628
