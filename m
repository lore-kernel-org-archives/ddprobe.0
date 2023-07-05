Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821C71548B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 23:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1B3C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 23:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688599628;
	bh=+ul8B4a2tjcfGsJjopLHB2JhkU0PUURRvBGJTW9zMgM=;
	h=To:Subject:From:Date:From;
	b=WtCccY22eBsHWhDiZVpPYuNlpDN8Sdd+fS+3iOrnBKtCjsOt/oUaMx4tlFVRh3acu
	 B9HyXwHtbk5PnBtFJF6Cu1C2KUqe8T3lEvlFnHCB1bowGe3GA3Nf0DNbq6GYdh/E1y
	 RDPfFbyNs6eUzn+ig/9akEaPVjZytVbs0EK4P6Xm0pznAtdgBTTTtCZpj619wPi9QW
	 w+Unoxuv0bWNbR6hDKjqZnHmyDe55kmh9HR7/P0+wWHJVJfd+3/L3tX6i/oA0dj8/K
	 hfq9zXCpRV4nfN6xv50B+nWG+uzn8zTa0RJlBH2ctNJUnle08SUbJYyhOwIRmVNG2n
	 TkvlGchXemQcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD45BEB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 23:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168859962870.21137.2516201688258970103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae73c1477d6b1e4fecadc997775605967151d2db879f7ddaf98bace52425755
Date: Wed, 05 Jul 2023 23:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688599628
