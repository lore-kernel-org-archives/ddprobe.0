Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A7D7C
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E2C9C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669863054;
	bh=RNM8f0oGr9JOZI9vDfoNc2cg7D81ej1Sj7B7LCnTa6o=;
	h=To:Subject:From:Date:From;
	b=eiQr2gfA8Pkh1I0ar42e8aTKeuLU3u1rJg2PJ5A+QarLXlDFSMVCboGWW5CA7Tqdm
	 geCy1zWVYm20UPu6hD4GnkAMk6lM2IfCas+yV9g6m70TRC8VLKY+BNE0R5iTt66xD+
	 etQrzLlQWz6wlrTMDjpyGWStXmta/UZvB9hrI+36scEgVxBiu+aD9Gl1r/NIanxZ4n
	 PEhHWpnP1dAHGsQ1oIXgB2oi8AgFW0ZD3y+SXKTEK7X3BTG6eNcKfimgQGxtgZNTZJ
	 +X6VJQxk2pn5dPQerrqdgzNfm0xUOmlJkMel8THLf+PPtJ2+vdqMzbFJHoh+503mF6
	 TPlB1R6i+lWuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC9DC4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166986305431.4391.5371837482718941062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7545e8acab7f3663bf1f5b36ef898c69b5c8e4adb175f7a3188ad1e4889d41ed
Date: Thu, 01 Dec 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669863054
