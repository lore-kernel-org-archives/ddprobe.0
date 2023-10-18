Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796941FC5
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 06:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwzudr5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6391C433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 06:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697609832;
	bh=Z12QPA0EtPa7vXftRS9m9xwnpZBQEPs6CCGzX04jQkw=;
	h=To:Subject:From:Date:From;
	b=hwzudr5Ozhv//uilTjCpHJg5qZ+UOasdmUfuFXGhDkUz3d+AcSxnhTRFUJhX0FFhh
	 8EaSwmtMwufC++0ogfpsnWoCbaqhrsIraaC2JuBQUuxLrFuJcorFpnJmCrPAQTvPEa
	 v5vod5rpjNTjm9dzZduo4mxR4rlernXCQc3IIKKTwAiiDOTYVX+jbqE651rwekLl0N
	 JFwssgt/fNfNN3RpjWVekjY++leRfBUq2+yyA5GxqrWkafKt9T/CjwxpKmcjxVezXz
	 hpVUqm+QSmsAE3FRq2htLjdwDNIUcRlhZfBHEzxQuGG1KMBJMkH2q7O0BXq71YXyiv
	 7+g8IQBz5xV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9036CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 06:17:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169760983281.12165.18375062084926497780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca9903164d045e9c645b8390d7c10748001631725efc2c6f14e4f1db1789c27
Date: Wed, 18 Oct 2023 06:17:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697609832
