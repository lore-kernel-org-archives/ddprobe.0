Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DAA51C13
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 18:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC4FC433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 18:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693766648;
	bh=DW7lpqV7JbDwJ8VL7vY2hYXxbd+1Z8x6a/aw21QDjN8=;
	h=To:Subject:From:Date:From;
	b=LnYLFoKEddqDCx+FJ3drYVRVEM+cpHHiP+Be+tmdGUQy+CrIK83E9j1A56T2loPfp
	 D/yUCtcbu9R8GpP6RjGsSr+p07ZCDQSHTDIPWUPUrhqf301IRpvGC6ImOQXj5HsqKq
	 TOVTzVAFaUz10u8e8UBwaeUV+4Xv+5T+GiCa1N7xEb8XwCKZMD4YRbrTye8n5U7xdD
	 UN6DGHCqP0u8MexC17y+xLnP9KdZ8w75pxswFC0n5ZY31MVWPwL/xuMOf4Gyf62TCZ
	 AmSSIuFYnAIza+2nctsz20GmrALyPZ1cjjvA1F6MJtdxz5BTtsIGLPyzTQ2AcJ5KjQ
	 qzmAczk2f650Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB917C71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 18:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169376664871.11162.5721790090930391832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18be67972764da65d58bb3c4a750371618db238e1768eadab872b31f5848fcb
Date: Sun, 03 Sep 2023 18:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693766648
