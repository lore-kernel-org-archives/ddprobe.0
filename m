Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2804E358372
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778170654; cv=none; b=bSrQX/xtNilotYHECb4R8tMeOIkq4BH3Ln36PtFyx7zNjHHRmbRhGMthjCuLS/pK46PrrZAf3X6GqbUrE1b1y+kL30yKoubeCqCprrolii/iBmq2t8HGtGD+Qib3mfnCNzKlxS7Ewe/wAaclnP4wtI2/9khThW77/0SeDJPNL3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778170654; c=relaxed/simple;
	bh=mrnGtN+sNeZsaeluhlzaB5tA1MoezPYSg0IememHoTQ=;
	h=To:Subject:From:Message-Id:Date; b=VE/t/K80/seedIkrI2Q0zKRud6ko5Owi5izWVFNvv5S9k6SzxHjdH5q5owPhqqr6RoDleqLGuEmKJAfLKlSvHSRhPIwhcZUVwzJuZOUaSk21zx33zKtpFKTYSW7A8QvIL4z/WbxpRCU95Iuj3FFGHsVZ+wYzEMMp8XGy7HI1QXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A71PwLFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A71PwLFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBBCC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778170653;
	bh=mrnGtN+sNeZsaeluhlzaB5tA1MoezPYSg0IememHoTQ=;
	h=To:Subject:From:Date:From;
	b=A71PwLFj/vkO2R/4GIjNeU5t8HPEdD5wj2dOTtjuEOcFMEJDcntKi2kjpfq1ahUBS
	 YMD1TYpw9FtjClAk2czt1Ilz0hVmvrhyUC3d7AxYjRATl938hB2wJkRSveuDQfR2zg
	 JCsgIOqO3pQNWqbYIqrKXWGBt9Y1uffqj8UNTxDTcFOLsPJ9pTEM8PMs0lEivfbVqW
	 oanHhfjA8OOd7gzuPIBXtitLTTD40WPwybj1jGnPh1SoKzUfFAaY6XoYb9tjLoPh+d
	 fTQ7iUUg3YEggrxo1/xF0NxaiSijSxmTK/Ej6c0LK1a/uVgoHRWRgK3w0DxxFqFAn0
	 6lXLPbC5L1D8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7E4CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817065368.19549.6472579915090213395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a0e37e72e8bdb1bb97ca00217b27ddbbaabdc832fb08bace9151023640c054
Date: Thu, 07 May 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778170653
