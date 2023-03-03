Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B84F1FA1
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 17:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD66FC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 17:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677864425;
	bh=j8bz6b3njcziIsEUALt7R6oXuosEU5s8Go7173o6zmQ=;
	h=To:Subject:From:Date:From;
	b=U0+Zw3GnUaknIPSFd0trw2gfZ08y5VGGpdNuFzE+wzXyafJedgJfRS1iNTUTFGYw7
	 kXq1kpIstNndlfG0r2ZPWzuquvSrIPG6/rjUaM/9Mpd6mQnV10ec2yYfMJX5Acnnll
	 PKOfdMHC0TWRp3WStKSyEDnuAo2E/8BVve/5CnPxqhGXzjIXZu/t2maQawwDBifScr
	 1nhegwd+MYWx4m/Aj6dXdHTsFrFwBHOKHlstJXL53+dg10n3Npmr8mfr6VIOvfqVb7
	 nZ6wEdLA9Ifu95jmYq5wYL5Hr8rcSbdd2uj3x+xgeLkRO0ifvYLfYV6ZylSXBtucjP
	 3aRDI9srD4W3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26AAC64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 17:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167786442572.17468.10642421946517422905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd13140ed6fb4d829af6348b2c7fe52f149258750f8f1565fce76478667c951
Date: Fri, 03 Mar 2023 17:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677864425
