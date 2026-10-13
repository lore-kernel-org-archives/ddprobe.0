Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2F048E0D3
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791868834; cv=none; b=Vbps82vAiaOZzOHlMnaiQ6qjPVfsq5okCSOHRA4XRcqTUlMrATLzPULK8OsCE4lEKEvGukjQSmNM1MLD3hDWZaIeENcFnmvkX6dvnBjGLNhD7L6c7KV9jM3TiMU6Yf0f32Gs8+GzAzPLBI9wEd4JKMcucdfPrRp7/JhYWCHuYjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791868834; c=relaxed/simple;
	bh=R/PrSn5Ndsf3XWU3kgCPMaUzOPzgd0xDcew+ITQeVTU=;
	h=To:Subject:From:Message-Id:Date; b=Ko2mvErkLl/3j54DGae/C9mT+xttKZNPwERvMPshU5NpSo2m+jjXMLF48HmSc477ccgDMoWtGNMHHU0bEJr+BaCqJBjYq1B3011EsIhwVz9oYQqn5bMbfjfdGYq9KzbDFUnZxc8IE48m+qfNGi0309UeiffYkozUgvSAYJWboU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKilMHEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKilMHEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0579C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791868833;
	bh=R/PrSn5Ndsf3XWU3kgCPMaUzOPzgd0xDcew+ITQeVTU=;
	h=To:Subject:From:Date:From;
	b=KKilMHEgJZnBVNDI/RTzAMeOzkYkM/0CeukNn5nP1HxvliQH+LZdfgmJfgWXgZesW
	 CZaiq724z+qey3TVL98QH+06+3xGwGSllSp3E13GGkufMWDrSFsZIND2R5Xn700jmO
	 jHsRhi4Bsj8rtBF8UuExLQRulvWCis6PLHtkfDWQLOb8B7Pr8dZrWa7QdJ0C6lCxEy
	 KGeYxs/Xoo7oeeO5JJ5B1Xn1M+vUvPjiKUEsqJ3NXEh65kNXKxxX/OaLAjgAholiih
	 EX0Rixq1/+ncmZQtAVynXIqxYjoMWVz5B3bk+AMhQKzWMZR7oSb6UJdGnExoCICCB1
	 blRy483BotWRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF86BCA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186883368.2785.660089914905414569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8497738994f53a99686b692834648f40f8816123a2c040c9f9e94b7947fe84e
Date: Tue, 13 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791868833
