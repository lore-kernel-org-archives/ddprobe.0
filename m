Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20607B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70775C433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666086053;
	bh=q9pQqtlB/dQu1/twoMRwzRBgJWoUARUttWdcRalBywE=;
	h=To:Subject:From:Date:From;
	b=k+tdq3QQnxHlDBriY1vvYx6N5a/sAzzBn4cGYz3ioCSK/WWh/+do1TDTJljHYoJvM
	 iHyfInoccOwFnsFbgqJqGQ3+QPDJAQ0oiQibCr8mxJjpz2YpVNJ/LjdJnXvaclfItS
	 YxRSqMeuI9uXFlz87JSc7yyAaGHoNM4YOaXE4KevRs8BGVJFrUgiPTC+gi1VTdJCmC
	 7YaiOUA9F/AhIQUczF+2FdyFGWUdD89LpXAZLtVm/wCkMYCEH/Y3shn0lexFtig6mS
	 KbbO/x/vHzdJjSyRuJ9JuADlrwK3c/jVcdlvUpjVbAGmytVahXC5N/ndE4K9kWQ7+N
	 bx99R/2nigOuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA0EC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166608605337.25099.6254032710547146597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d6022b0ccdd2d02377dcce9dcbd2cff0b3f88b6dbe1806fffdafe564de96f0
Date: Tue, 18 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666086053
