Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFABDDC2
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2425C433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689980528;
	bh=3R7GXxSe1ooETKAfCF8/PvdGL5fyR5Rb8zYo2OIqeZo=;
	h=To:Subject:From:Date:From;
	b=SUyWLEukvIFVJiiZseTaZ+6yhLWwJfmWdWWp9v7hkZ0MNPb4VVCGeb6rCTfb/SYBu
	 o58NX7QbU5VqLX54qM6FGPlBzclCB0TbV6kTJXu8pOacfDUwKFm+ArLrWNIEQg/Ycf
	 g7iDsLHNZVbAsK9VIETQGW+t4ktCN7IE/y0w4DVOyk7XmuDzkrauFqgMtdoYG34b8c
	 LOgClGBmLZfrI0YFZbKch03rLN0nR1JoGeguqoSDOMu+wlOfkzm4Vi563xEg6h3xdY
	 68sqQAvOvUMWjm1s3QZs8ULEtrz/CG9WytOgKiVc/XnlUxBc3gQ29/VT0uure8nC2+
	 XtSnjL2jZ6Tzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA26AEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168998052868.16754.14430278942228133251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5ac511a576aa347c741b40dd0e03548ee7edc36ac6b6fae33eec957d352495
Date: Fri, 21 Jul 2023 23:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689980528
