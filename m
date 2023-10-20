Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0641A59F
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6z/pTOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A8CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697808496;
	bh=r1G0fus20BdYYAOPqzCjt7bfagtkzVd4cNKkNv+TKYA=;
	h=To:Subject:From:Date:From;
	b=c6z/pTOr7tjpb6GWH3/NcJVzsaI8rGiKgaQwj9LcQnEBnd3HXHP2XQ4Ll8oVf+4an
	 7TZnt2o4YICLduFkeHEIaq70XkMSKA1pgpNlSqVyR+FzjAJhmCSlGobK0d/rNFpGtZ
	 HX4WNRA1bZxG08F0wi5+nmkXByf13uYugxDQr+upOhMpBFQ1wLPf9rUtl3Pt5uHIaU
	 +Q2g4Bh77yuEmf4o4Zb+GHpNXxkTG1rEJpUFqXmpfFOC5rqPrI3KNvhkNcvbQ3OjRx
	 qOZLJyoOoVwa1CGUMN9k2PY/oWUkoxusZPCpr1MOLZXtTT8C0XEigxKtk9QdZWc7tg
	 8h5l8537Tb8Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C1E9C001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169780849643.30523.2055321996253699074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8959fa11a176df96afebbc43404327a88d4fbfc92d4fef1b14d28ee2b1565cbc
Date: Fri, 20 Oct 2023 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697808496
