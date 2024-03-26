Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A137C1CAB5
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711416496; cv=none; b=trPi8KWFfZg+0cRs7rbddX4BLCakn7x7x8aDpFAdlg9QYG1Zu/NKqmYU46n53HbY/g5vLaf/vyWHejr8UODtjZTEAGtIDaSAkASqPPpNbQ4ALBowZubZPorBOagDzYV1ODS6tkQJbG86oWnZcduQLH+quGKIETSK2rGYxoImmJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711416496; c=relaxed/simple;
	bh=WBdjWN7bxqCJ8DcZIylkCi41G1cT1JCmnhrH/KZO4Gw=;
	h=To:Subject:From:Message-Id:Date; b=CFZkAJXf8avWZf6Ikvm4NQQ6YVdqaqX48DglhSe0/VAr3gxTEb/hFVigsOpgAWZsGFG3HsGUE4lrgGAiGlFztwMByI09m9CLd5p9Gt8JFjYH06Ybe7spMdqi4UlkbzwFGVGAZUAflWlv2ujn3sVXZ7KfRPjdeC1mafOrzeHwhys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6iR5ICa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6iR5ICa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7391AC433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711416496;
	bh=WBdjWN7bxqCJ8DcZIylkCi41G1cT1JCmnhrH/KZO4Gw=;
	h=To:Subject:From:Date:From;
	b=u6iR5ICaanLFOp9Dn/i+oTWHcnKjx2KyxKmQitB1qYbbVfkBB8eE8weg9j1mr8utu
	 1i9BBt+r9xlF6kdXQXPjOhHCa38jqrogqYFLbMJy2j+c8nDBXEa5v+v3LpQo7MrxZZ
	 PsrPaDTfrZCY++e5ID7hvlkTS4zcjiDmX43pqoMXuEq+cSU7tFaqAnQJXjuCqV7YjE
	 KQeqItxzhSYW7ozH8YFH0BIphKphsV93iD9tPHJZ9Jz0opGlkwIC5wDESZrA7s9huY
	 XoQ1BlyPL5ouJ5stSvilJeK0zpZLURUIfijWeClip9Nrz5vo5Zt/ruRUpzlHzl2vgC
	 qJmELMTkOFQ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B5BC54E64
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171141649638.30057.9266200271849766088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b00d08fd58d714b153a6b6cf1556bf749e0f21b4667e7ec294965ee4dcb2e5
Date: Tue, 26 Mar 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711416496
