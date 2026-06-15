Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AD533F8C6
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781520994; cv=none; b=U6IYb8ejZzRQ/9mpuyH4UV6alswKPRersvW9vYM5nP1upxRlV3wygbM5EiVIRIHQWUZbwIvMxOeyBfXMJEWyxdpkLcyGLk1vPkFha/EAoCQEMCLC4EGVnO1ISg5vVV3HDDIayTJLPqpqGXO5RiioeYouK7BdopXfwbK+PVUwuXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781520994; c=relaxed/simple;
	bh=tBfrvUO9XNugpvH+oTAOkJT3oZlimxCJEy7PJv8SZd0=;
	h=To:Subject:From:Message-Id:Date; b=cbqNL9XV7Ad2b6HSXVaia9MkvebZwSaTJpcU3we7FaYzYDVQU6+BNnlrEAsLpSzZhCi2x89fT9RUVuzrvNf5qIGC+EmCc+dtPUGsPLfy+OPHCgNfJdAX6QOt9ImFJhZGCV93OdZIYU2yFQ4ZT0aqB+clfEDNFBlQg+lTVVaOLeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHnxY0JA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHnxY0JA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18B1C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781520993;
	bh=tBfrvUO9XNugpvH+oTAOkJT3oZlimxCJEy7PJv8SZd0=;
	h=To:Subject:From:Date:From;
	b=IHnxY0JA2sHRgHwBColi3MSFwYkLgnccIrdC5tJbFPs7ALt3Vz1YlJZFVUjcpPqwm
	 CxSxXagtj94DL+zpE84UrqIkyvrToTkDN0XdXAMZKau9MGa91D8LjJnK7XiZNqUO3j
	 qMbUquzNIgOvnwy4iDnsRg8k/Ng+jQ0U8DXbiqIwiiCVbpNZ1GDnjDiOokITc6YvUS
	 yHxad4+kvXce7Mh/rAQ2s/rP/zPUXpdI4EvM4MKDl7erJFpfBNo3o+0gJ/Mt9KyINs
	 ObMgzqPhD5ya4zFiIiEyWDE+7Mo+liVe0HtARXQM+9acKan8fmBtXyB/Dk5DC7f0yp
	 s82I6RNA2Jsrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2294CD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152099371.16217.12663732945760934270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e91fc8387e63739e77b6cf60808b25a7f674448454b52bec11decb8ee12741ad
Date: Mon, 15 Jun 2026 10:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781520993
