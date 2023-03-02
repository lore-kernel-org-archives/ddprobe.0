Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C885381
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 11:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EDAC433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 11:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677757565;
	bh=I2Qr0KNXca3o2S5PGZny+Nk+qOU4tSQOpWNwb1XyfqE=;
	h=To:Subject:From:Date:From;
	b=aEYZaYG9/aiRcXjjRvPBq22COkpekiszvvmDy5wo0NlAR9NFUUlciYZhcSVZ6jK9R
	 yO87js7Rw8VamoAUwAi2Y00Q92Q1MQY3tWtVTiUfyfzfWoZf2Gr88guZuXzmlbiBmr
	 nPSB90dYhsxCtL6y1osPbXsV1zXL9Raoowtg/jpJ+nL/AFyYlNdwZ5wRy+yxmHyrJB
	 768/o09soXcNnzRdHtafCeYbRUPvUlg0xolp4xvXBFEjWMDH7rM61ekhJlnTEI3BEC
	 4BDlxqXc5JNivEnnkUMb2jgplaNatioJF2Ok3H8N+5rCznyyJB2WbS9D1i9dB4xswW
	 k9+7TX9IBhIgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4D7C678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 11:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167775756575.27713.9019903203987423442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4affe27730524a713cee340f28ce2d3691d3291f6de73db1fb6e01773d1978b9
Date: Thu, 02 Mar 2023 11:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677757565
