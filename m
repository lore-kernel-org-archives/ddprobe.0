Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79A146B7
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98C97C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673821887;
	bh=R3uLk7lwCs4KBkcJkbrxdtXrNG74KL5HJReZZOH03Ls=;
	h=To:Subject:From:Date:From;
	b=lfkTEPrQey88YdOWirbFxTVsBbDhnXW8UQ4wgqxPN0IbqE3t89QrMEzyxL8+RXvVq
	 FYnSmJGvRr0NXkN08t54j/1i38no5HKEizcOX3Wqehu/zdLgnn4g+wP8Ll8eRxeEhb
	 pupIeIJ2xJjWze+/ynTi3LAKwl1FSI0hLDk2mpM+M0airkds6VkPsL9dSUhST3QGtX
	 TIrHhN1R7msB4amd8+WNGeXNU+DaacDjScufl/n/4jUGsmVnsauPzSk7AXRglP/y/m
	 HpOJtTJjzJSpLxlWwhsHxZGPgvL7Y5Al/8M1s5mjyer1TYwoZvQMVkZWpdJ1gCb2yp
	 gOFR0DBhIeu8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74A51C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167382188745.29294.9311301679782635644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd39c803cd61b82d8ff476cdc06d33f1f0d6eb205a43ec27a8e0877fff3e7de
Date: Sun, 15 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673821887
