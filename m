Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656EC3FD969
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789975834; cv=none; b=HXEvFzv/ZRvntjcJl0pMW2Z++9zOW28QOQPqqfE6kqFLFTm/lY3c22OccAZ5u1w1K78MU6PYfYUo0llVAB61W0FLwvPfWpn3mwxeX3ChS0kIAaSQnOdqsXlajZT4Z62GPdTGQprpmE9e+RS/YNDy6P2WMbMMBb6hlqDF7yc4ZnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789975834; c=relaxed/simple;
	bh=VgYmVMcYnRjb/Fc3VynhpcbBjp58I1c2UAm90/5x4Mo=;
	h=To:Subject:From:Message-Id:Date; b=pEsNvCsj9Q+EuPhCZfDComVczwk4hKZsBC0wnX6mfYV/EUGZ23c4sEGcRt8Tatp8JUb2cCnGEKBkebaaVXWDYiEZK9DT7tP6leZmXntR6p2Blve/VnWYifWNbCTol2mJocMdpBDbSr/aGwZqFCZKjjdmLfb9othbCv2aiglpsSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jC5qgYLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jC5qgYLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB33C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789975833;
	bh=VgYmVMcYnRjb/Fc3VynhpcbBjp58I1c2UAm90/5x4Mo=;
	h=To:Subject:From:Date:From;
	b=jC5qgYLa4S1fEXOn9mxR3Qau2xf4nItO/goQXsI3meMfFYCGaPUKLSoEn6ZMvfdgk
	 MsgRVZ2zQBXp/pT9dI06FcDE0RXqWIWiiQrM/z5lH+LAgLd9+bOuAH1jtMKan1fYsR
	 2IkZinsgckyVPNtXkPLEznn1n5xWac1Jh9tCAV/uRHM4YVuNwq9sFJ8rZ1hwH8A7Ms
	 zaRPokENfPoNjBxlY+dGmsgkQcOrw4BHvsc7c/vUmAAgTa8hgs+QbKWYaCGdAnHOP+
	 tsAgG++9JABtmPLVG5KHqV3DmnvWMq0uxOmNkDe8iDwmMO91D1WTXqz762CP5qQ47H
	 VsVs/K4859RBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2E7C982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997583369.6090.10899750150887163079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f305fa4b311cd0d805465eb90be3afef024d8fb94c9777a901faf93f981040
Date: Mon, 21 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789975833
