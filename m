Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB1C331238
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772193894; cv=none; b=WdA9qpURzKbgKc8b5EgLVWjCUTQXY31A/1bBKCDuE8dTDeJLkJvQccdtxq1QrJiWvaXT6JcAwT43vkBqOmL9e/wyKVMGeFYPrYKlyjrdzzK1RvhSrHZ8bmriZgwcMRbN/7Q1bfAUwWc0nGFEcgmymJIPM8z2yh0olhjN6u5eaqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772193894; c=relaxed/simple;
	bh=Kkq5xRk+Lt5Vr3gRH+ZtwkEXMVnas/QdvaoAaFUoQS8=;
	h=To:Subject:From:Message-Id:Date; b=PhEwyNGUNX6FQ8EuuKGO3Fek3deMbnFQ+RZn+YZNhwg7JdH348qufamfoNgXE7UmlJmZ3KzhyyPPjSev0b/MoY2h0Nnr8Um6yCwrr9avUCnKZkx22E5RA6BB+pDaNMB/j2jNyRaJgVveHkxW9OB/CNQWsw4tnulDkMqpKK7OF6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qa1TYhXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qa1TYhXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9EBC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772193893;
	bh=Kkq5xRk+Lt5Vr3gRH+ZtwkEXMVnas/QdvaoAaFUoQS8=;
	h=To:Subject:From:Date:From;
	b=Qa1TYhXDbapoAyZMGNmE+qho1Lb84R7xy1t6DnB79jj0RbwEEphBsSa2jYKXLbZ1F
	 QR6uQRasry4AVW+BiPgIVIVkjFJsJHBiJUX3GvFHDPbfWgd8V0sr47jmap/kq19Rey
	 y8PFX/nh+A9MqW0whtzd+hpWOioV8hMx1GOBF/oY6BWxaMHTlOq/ciia2tnw2nWETb
	 SfyW1cExb82MowNgtvzJ7I4tORziQ4CrdRWUVsknYyTUfpZfbSwlkeiUpgVnywdhVF
	 dtdVYG3qTO72F/aBtxFepZFX+ubPQjKEzr/Q+PL0P/9B6MvXhPS+W/KbBHaj7fNyI9
	 639O96fzV9JDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA79FD8FFD
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219389363.7502.5317390019838745577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1eaa28f86f7419345d123793cdefa30d21e2f1cc61274466bc8fc43ff10886
Date: Fri, 27 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772193893
