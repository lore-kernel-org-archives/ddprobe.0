Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0CD41E34
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 12:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvIQi+du"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF85C433C9
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 12:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697547428;
	bh=1IJtRkZp+riavDfMJp0VUjqlFsJJA3YeHGxVipeYtvs=;
	h=To:Subject:From:Date:From;
	b=NvIQi+duV0Jn+DDhD1sUG6w+SGtOadt9gqRPM/qPjvAiBdRpKlJP9c+eLpP5E9S8B
	 +spYHJvyrDrIDmnkavfoxYNDPxrvIMPGgeWeBmAsb5SdyexEad8A0TNecFtb/YdalP
	 sqvQhgLah5nNpKquV15WCu8fWuon8RsCU8zp0FVDImLI3MbVW0uXxLPQCA62gg3zLB
	 /mdGZHbwCNEHGxXIOqBnRLTnlD47xt4cwchpu/EPFEgm+TTsg7Sxyl0VAnCPiPMPdc
	 Gxebus8fG6cg8Fsv4THmK3vc/OKl9nwwpw7mAfektrCldMyppD5WjLcTzv/1DDv1hF
	 L56lx5MeKJDlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8523CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 12:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169754742868.22194.3212476492034051633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678b25f72262b22f7ec273751bac0409a46bd0f7b3ea9739a35d93263e34972e
Date: Tue, 17 Oct 2023 12:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697547428
