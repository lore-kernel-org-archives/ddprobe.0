Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395172F2C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 19:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9FBC4339C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 19:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679685665;
	bh=GeeXWGBLQIpjHhwP462OM1MmHxqKMjYIg2PTyhzCxMw=;
	h=To:Subject:From:Date:From;
	b=cSh9+dTgWcEG4JdKRHPDCpiJjbSpDEqkWK1CJXd3RcyIhE0DCl1xcljTOYYXISHgM
	 +fdaO2lvMrxNgiMQ85QDMMU98Oc4LF5rEIBQX6TntydzSII2QeaEQsKM4/0MJyJ2Qy
	 7zPgXQzTyCA/Faz+dtkn1jC4AtLcKa+LcagcSte8LH2UwCCaRwJdIFmUJhVyAots05
	 0VtZRuZjVM5p0BFVFFbsbw/3p9F56CHl1QFZgam6qID2RH4rZn3r27q4lTx5IkQOoI
	 F7lSarH8nNFwvipp9Qq3via5k+0ODN+QkljLa1g6Qr8AI7albgmCPewJ5S2oDGypE/
	 I5UfBrRn7e2Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0205C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 19:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167968566577.31449.11289145918837033239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540b24fc7adff264e4507efb00a849ef9e0fae2a1bb53b79a30372011432c157
Date: Fri, 24 Mar 2023 19:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679685665
