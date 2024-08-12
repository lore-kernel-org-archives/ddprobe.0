Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B585194AE6
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723502754; cv=none; b=CmcC0/f+LjfasO1oLcVX8ho3ftwJxd3VT0Yg+GmYnPGXd837rRGrOCbsNqWuEbw/fNxoKq0tHh1glxz5/jjR1Sw6Ktk14+DlDk+2KawVHClYeI6AKbSrh2uTrlYD0/qRogKDsvWMFP/+j6Y1lDHt9ab3hqCMcGRhGsnOGdFyqjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723502754; c=relaxed/simple;
	bh=c0hAvYsaoCpicp7JEEv/C15BlfRsNm8UjK73SSGadrE=;
	h=To:Subject:From:Message-Id:Date; b=mNqU7oeytOgQWFNUHmmb3VV69K+dRiPDTdUqoZPiSOtFU7VSKiBMvXfaqSR/QhTaMx8bQ1TWt29KjXgGRPCRawgkFXWyMhpwu2rVmr4QXLaa9n/RGMeG7iduZG6HZPWrHPABriXeJAIM9J3bsrWqMMFq9UcHOfMNp3saQqtQE7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wbm00zpi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wbm00zpi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97B2C4AF0E
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723502753;
	bh=c0hAvYsaoCpicp7JEEv/C15BlfRsNm8UjK73SSGadrE=;
	h=To:Subject:From:Date:From;
	b=Wbm00zpiTs4UnxBfMtuBU4Kr6WjjrKzPzgL399e0txzAQQ51KxJ8w9wzdxA9RyPii
	 vqkhaqCYpbwaAEONm/LDAWbxxdMTi2+7xBde14C68WBinFZa/H7UOKcGlusBhSgN4o
	 /C4nzQWOgW6GMlBIgV1uu+I4f4VJONNGrTrvGrtWJzC7IvEtM3jjBwdz7gND7T4fD5
	 T8TQCLm7out/cdsE01zcYxEKAUrqB6M1q71zlqtb8al2OFvDjCy4LY7pL/WaiYo0q4
	 XSy5dJhCIxczXyhFBlbuQAe3vIAcw0ByoQ0UcMRe3r3q8VRrY3x3ilxu4tksBavsrU
	 Eis/cup4SsEqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F10C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172350275361.23795.10573834839891122807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763a495a461c51dee171b70a921206ba116c84c6bb30ac2ee3a9baab141ffb98
Date: Mon, 12 Aug 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723502753
