Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31E946AE
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8738EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672437087;
	bh=sqA98xTKnlEvPRvqeKMiiFImJDEYJXI281grTDdwY68=;
	h=To:Subject:From:Date:From;
	b=h16ggUdEMcU2z1krxG9QPVN00S29qfMz0EmZdj4hru2Vs9XoJmK4ddI4K+oqs5d4e
	 fo0tTrV4rxX6OefnmopbIJSrgEvM4O+My77bkAx1h4tIDDjZ6LC1Efkxrvl1lmlQ68
	 LZK7sBKY4367d+3d2fjveQpyBkZIw78tPnymAVeDwrP1SGxuMvvUWT48XPkZDEAiIi
	 QS7PzAJH42SMq/lZiishJ944KmmteCJK+DE8PRRlbWNwjx+LIGbfpNAUzcaF+IuAUG
	 ZOIS3Jr37E9rLoq+UZ7m1ZYnnqgNUYmLJ9bVuJZlRa2mlOwCDkEBsGyWEQezyj7t2A
	 n1QZFtP0vQPlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D325C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167243708743.4000.12840502650251950611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a602f25d791c3c2fc0ba0f6603b3fc0ccb7aca1a671136ae5806c7a20db39c92
Date: Fri, 30 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672437087
