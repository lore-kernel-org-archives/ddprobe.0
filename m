Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF7117E3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 889F3C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672633287;
	bh=m+CbG9iHf+bCpGfDXwzBQIVqiHXRF0jyhxkXLLQnCdU=;
	h=To:Subject:From:Date:From;
	b=dqeJ9FD1203Nxs64YNrHMet9STJSPvM7g7blR9OFTtZovTGfDpufzr1DvTw7kdTDg
	 cuTwKqKIVz/3m5pCBJnofFfNRx6Gcd4QhYQ5ISihTsN0zNomCw2Oy/G0Zp9DaUYQ0C
	 h7OqDsoZprPnpk16ZvZJylOfYoNFBcq17iw9XNwJ28T8s/DHyRZt34gc6Uc0Pa2iTG
	 yaL9Lk2pQKCzndH7q2zOOXO99VuXvzNMwCZfpgD1Pf65LlGLfaRgG06gu63z1Nvf0o
	 1ApKQXLLw4Qlhm9uw/rlesvGmhypYf0t9+pjfzEdOb7B+DsMDwJmfC95OLOSWB4rGC
	 nYZ+i5fr97EwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB88C3DA7C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263328739.13894.6132451685583738816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c96f66b0789b5ab8bccbb9f91bc0eb1ef8798a2cb30879af643cfaaed36833
Date: Mon, 02 Jan 2023 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672633287
