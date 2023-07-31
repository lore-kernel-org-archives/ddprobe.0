Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482D6182A7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 12:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1324C433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 12:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690804928;
	bh=tPeU4ddH6tvsRyNkhY5Fu1ICNCSJ5ZwprYAZeNGzfUA=;
	h=To:Subject:From:Date:From;
	b=ARK2A5IHOAI7xAxhjoDDgKVoCuhyHc3iPTqnsLj7owDzVOO5voZ3PKG/WUIKfRsbA
	 atABlL3716psCk2yllZBXI0YhcM3a8PM57fMGToZcM6Nw9oAUSAVYx29RD+cDErGss
	 rEjGOAkjFGEwQ9aPLyl3sGw6+PvskxKRYkXD3uPBVFuBW4o/iQ+xTtBN0wyA6dVSEK
	 miFYqYsCvLBOruGqqtggqXO4eQDau9PH4tihdTk7CqgxUj+MCcj3G67x0ncU/QnBLu
	 XdxgFqTxFHnlsZIcFYfF21h/N748Q/WS+XToENIczjWcmqU1vlTG6r5UoDvdLhhgSC
	 BaUbhyT8RP4kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30EEC001DC
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 12:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169080492872.4100.736444376329726149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364c7ec54126b967e70705a223d4af91a531e9077e453aaa6715c2c5849cfe14
Date: Mon, 31 Jul 2023 12:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690804928
