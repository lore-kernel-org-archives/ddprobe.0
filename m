Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBD02264A9
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776562654; cv=none; b=HYgkViR1DCzwRmnB8VkWZ3S7qcUB2OhfCNKwG/IszHxTRe/ladettYYr86QBN/mYzMqNcRRdRMNMdvuaJDR+yK1/KUVc1OrzabDOCUIHEYWH6hIrNF61tXkO4sfq5xSRfMQR31orV7X7pyh4LvyDGIn2K2t3QEMUQm/Z2ThAX8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776562654; c=relaxed/simple;
	bh=0spkroGk83qWgNpshPT27M1a+nRT9XfGWNTzG3Wojpo=;
	h=To:Subject:From:Message-Id:Date; b=Nh75q2M/30sm635skIPIUsMI/QPVzkMYNfq3DqoDbjYepzsyeLEGqjsRDwe2bt8nU8hE1tdvfY8YZlLtRwl1dldQ951GVJ7d8qvX/ZPyLUUXBEFCO/c+vM5jT0wDKqcBFPs64dPXRG9sl0Gp0HAsMqEcf4mcUUUjjMf0bkGQE/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQUq1Ue/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQUq1Ue/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF5FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776562653;
	bh=0spkroGk83qWgNpshPT27M1a+nRT9XfGWNTzG3Wojpo=;
	h=To:Subject:From:Date:From;
	b=jQUq1Ue/ZbB5I6pMH2v03vYtk/uGqr4yaxWtKb2XmRSvoemup/q99EtWcYV6Rp1K4
	 JTGgbPcvXqqqca7/TeDf4/LzwxJncdDZcZB4SFjwC1+GkqeOAhYSxSjP56Tsq0muvl
	 wxNtuayB8BAL9+VUuXiz1E1WNJZmzN4QNxzJCZRaAJ2QP0b31pbQJKceCalV5YxhIv
	 TjECof3ZXK34eMAzPxbB7evjiOtjBLlNW3cqGVvTLc8XC2ELA7fx39le2Xy9kfHCio
	 iyQgKNzrftPFXavceVBE0vrrq8uP64TtsPNQZG9Gfinj8j1wY4c6d8qb33eGy9boE2
	 4O0GxG8Kg2AFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4E2F99C8D
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656265368.25147.2972413248176781336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad00c4bdd5ebb8c0bb89abf610e1ce3b531bcc440f7e993c87304d8570d1e24
Date: Sun, 19 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776562653
