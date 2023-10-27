Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C5918AE4
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6AhDM7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91E4FC433CC
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698415096;
	bh=mnLschOpUEsvTNiBfEOat8wmz65l36pm+GPj9ukiZ7g=;
	h=To:Subject:From:Date:From;
	b=g6AhDM7kNoYGcveqC60qNcd9IDj5XePiIyvOG76E98xxNlART8Bfk4nXJqcpkcvY3
	 Gp6UGrWAC5ooib5tfgIv+9ZfCDyUR29J3wnkHXLC+l2taRD3c7kwHUdcykJTLAOmVg
	 PRe8ovoDBhMSXdgY9kcTJoHoRzcS5sF3L/1YkXb3ezeKhz8etANPOSMUN6pH6zYV1a
	 ipwywma2syxLcNAlng4At2AQGLUEMC0+Ehf7lwijMHkU1F5DsW7FT8MvwuElklnW9b
	 yatbF8CPOKdwdFQzVDY50/akXlH1Po/+D9Plhs9JYK1XtEaOeQOmJHw58zc0H0qglX
	 xmoBt8GS11AiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72969C25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169841509643.25823.5931481358048596976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b6ec917f00c360fc62073e4a8ab6245a5d79ea21aa0bf1c3321c6228ab9ecb
Date: Fri, 27 Oct 2023 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698415096
