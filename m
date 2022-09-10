Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C343C184E
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E68C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662822653;
	bh=5SYClDOOJ5Hppc0FXDFkWm5j+WQi67qyjGT5CrRnfBQ=;
	h=To:Subject:From:Date:From;
	b=ZDR0hMSqduG5XzBdkP66LoshVjrNpw0DjSM6m1RBy/SXEtPSzgnr2yNr+2hzILHkE
	 rBZ1ZxGEpZdRfSGRFeA5+L4yrEpE+iP5m8fp7+Y4JlFJ5DvKp+Dcpq9INePEdAHBmr
	 AYzUBFGAQZsFk+S517g3AIkPjPIr2SpWFuICAwGXVFoE2UUmfk0KqItHOJ0CU/p8GU
	 yVNqFaCP87ycgIlDPF7UXiJk5kh8nDSpgDBDRozrwRsW0hnlbbrB9b/2FUrFcpvEb1
	 Ol15FUnT0Y08SAdFqq4l+23x1jC4JxnkPdwsmBYXwZTz3TQmBfriiiLe0pQ676qHkF
	 Txfl0nlYd6fBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E87CECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166282265335.15984.10854580195026769242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d92b1dfaf10faa9f9cceab355c60882da7b1fecb706679555aba10fb814651
Date: Sat, 10 Sep 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662822653
