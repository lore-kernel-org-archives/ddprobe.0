Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E730CA48A
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99ABDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671816687;
	bh=1P5eq8dVAvWf7CZAvSI8WnFxZ65AeE29ig3cT6SB2yg=;
	h=To:Subject:From:Date:From;
	b=l1O+6mKxXkNmtweURXYE0/p7lVyFH5LypLTI5EPTMIMFR9f9/N59cOlFtmb0TLqqL
	 wpKZcDZLD+Gqpbpyh530JJB8WigwQjeijDzLNxEXs9GvKyfMq4XjEocq+85Hgf5Ovi
	 74R6FnHbCfLyTzcrrOdpBTkur5TmmTXnE6NMtDhSCAHbREImA4XNKtxSxL3Dn0j+40
	 HSM3KILtObS4YseP1AAiN9ylaQHTaMSiAo5ZR7wEkT222NOeXRhup/6d0ONZgUgbRI
	 kzzbVMgcEp9rdwtFBt3zPdwN8TqxHt8yzAuxhWCj/CwDqnHSZiQ8uhyFycfCqtnnTw
	 h65sIfP05o8Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80451C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181668751.21925.16830141483591589755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae75071de510919facf28a8076445330c4c7f484966f0d663b80b1d93540c92
Date: Fri, 23 Dec 2022 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671816687
