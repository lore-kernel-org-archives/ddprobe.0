Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75E07E23
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 690A2C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663710653;
	bh=Lbjqc2PpxcNnvycRdA6AZf5oj0sQO7RadJ8qCmmF9NU=;
	h=To:Subject:From:Date:From;
	b=A6HLqr/S/iS6TzglzSm271H8OCo+mba/kBKME7tR9U3BCC/oUppqXnuSGpB1EXocl
	 GMfAF+KM5uVbt1HnyeHPs/K8QuQ25joW/hEBfHYL9gMVXwhVDdBm7JkCqstgn2Jaho
	 DH3XCKJNzVqhTLAedQZID/ddgNEjWn5N1nx9E6PZBAPzI1llAT2dVVmOS5hogYNYix
	 ok+/z0a/XYCmOwmQMUVoXo5l243Zg/OGApiIDndrmqROutqlk9fKIXEv4nHZQMtCZf
	 UhEUVoFOsp4o7BaQDDGL7xY5dFSqS5F/McsDk/gScz9VBBhA6t+D0gS1m4S0CtP8/p
	 u/ZEEgF1kyr5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561FEC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166371065334.26378.13550969139123999393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2faba4f14b9a988ab1f31ea70e0fa3819da91291ed1143edf2dcfb27e22393
Date: Tue, 20 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663710653
