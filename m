Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A672260C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737350754; cv=none; b=DOJYLp0vXuOJDiogkhPIcsEEVjPRAjuYf32lmRkha7xmzP3GyIm0SSjKfranmovk2IWIBiSDGVdKDAz84wKWPI6pTIAHVUYE4zpFjVact7KIIpcJqqHgDlZnl9N0mqKOePYDP20qgoG6Hy2nLzZY60HWnANB7CtqdTp9spFjRoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737350754; c=relaxed/simple;
	bh=LbpRVq6naKyK2PJnxz9xFUDG9i3FnXPxW6pIIUmqp7A=;
	h=To:Subject:From:Message-Id:Date; b=ukDRAappR9g+G7Z317+4tjOIN5rcw2j8y1VvQsiWC6Ie+GUhcYQ2B4o8/B+tfp4h27SX7o1TZeXNaaUseQ1FtWXerUiPfBMqNxfYZaw9AaR8SJ7Uw4bbaXPqhVYx5sfV7YRqFAM6bQDmrKMPNza5/hlzi7Ofx50Fo08tRVX5JdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMtNOK+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMtNOK+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73FBC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737350753;
	bh=LbpRVq6naKyK2PJnxz9xFUDG9i3FnXPxW6pIIUmqp7A=;
	h=To:Subject:From:Date:From;
	b=KMtNOK+EMVPM6CG32/nqZS1Y8pKhIPPfOx/7yWz8kHf4jTFzacLbNaM7cqK1b+cLf
	 lgSFVUDz/++GJehbK2REDHgiDmj1/9X0YtrhuFQTmzB+Y+RBiTqf6271lJHrynJDMe
	 2oqDXOMkQtRWauOdhpYiS+z1HJeLUwMjwe5c6beqO94xnR0dhtBPTS7b6goljuujm+
	 fUGYhzuETpEPHNwK47cMp/DhW7aWjB8uY74MPXFOaytmtsYhYuxsmJPMwdl3YuW0QY
	 hKj2POwWJRRsUd9R4GWIcyLD27hU6jI4KYUY4TJWEt1ppUe9hi/B/2kpUfAfiUSkSG
	 Jto3tvWwVWkfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953E7C02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173735075358.8355.17885126182416969433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b461987e260537850c7fd269ca61cdcf7a7ea033ec4c88d589ab92475d22c14
Date: Mon, 20 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737350753
