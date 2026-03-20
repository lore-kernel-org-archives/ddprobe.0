Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036703C6611
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774031694; cv=none; b=KDZr3DdRPU1X5pxymp0tenTTNUKW2j7FfA5+KTOsL515OylL1sxtdVt6ECWWmyS9GdAnIvR4+Ul3+mhKi77YGVXCCIyKSbL+ueTSRznGGwZL6qGCL6RBkcInOw3qm/6t/dywjouoTqJdfPcd3ejvBBU8hEDd6747XOTn3X3ApX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774031694; c=relaxed/simple;
	bh=u23BX4Zn7lcg9Sv7zGwJ2pUJjpxCtQGtreKtqJ649jA=;
	h=To:Subject:From:Message-Id:Date; b=a/Z7uD9dAHgfPKbnd6sZnIaN4sLouCPIhqEyp+qshRpOrUH2K4y0nO3j9D+J5JTrAwXEnyUTk+wf3jdLTj8U8qa34YEZxAUGF1HM0Er1CRJnGxNTCZ/040LeHloEp89sOS25u1ZfVwFFdFh5NHYiwMYAAA4H7+BsIoWQJ9EmTGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/p4wN8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/p4wN8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40FFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774031693;
	bh=u23BX4Zn7lcg9Sv7zGwJ2pUJjpxCtQGtreKtqJ649jA=;
	h=To:Subject:From:Date:From;
	b=N/p4wN8SbrLLKEZQhr2PfQE1pfJwEm+7prKv2MSPzY9d1UZMTyNLnvlUGaomYUxxI
	 4b/hijw0wfWeh9OpNU0q+FsecS98rcuJNntMFAi+sp3A8TYD5Qhjju75VICSyx1hG3
	 87INLxGj7Cep+oXLkMAOZJVSFNrOYmjIc0PVgIAYiq1b6QjGa5cnV8zmt7A86l4V0y
	 4O60B4cRaP8aZ5J1cixWTxmOTrDA1f1Rh9WcY3IGuheqrQE3AHdysSnnFHKwOJSnoW
	 bDyYXLkw8CdnArCYjI47NxtJP/iDkcbPiT5B3/H53Y7Ddl/D8Y/3ce5KMq7mC+SLfZ
	 B5OfOjqFKHTDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928011099B34
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403169358.12118.397440427193353638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44c3f5f6d906a38a8828fc64e5fea5e3557ff2a69404e03e2cb41e14e7043bb
Date: Fri, 20 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774031693
