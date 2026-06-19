Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A57332610
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781859394; cv=none; b=BsRvTGOkAWFgGCu1sKv2gCj7I4ZssCdJIVmck5zU7q+c9AP5PqNfJ5BKomaEdvkW8Q8fiPI/y9hR+6At6KHhNXfIWcU/p3zevHN7d+iP5ijloJCpls0Nv5hOgl+Rs5tWBlGezq9KGq1+an3TIbuExZOQMGm/JG2+t/bmd/gghNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781859394; c=relaxed/simple;
	bh=BVFRJh7oqD9zAhbD8Xcs4bYDZ1cx8uwHvEmURf/2B4o=;
	h=To:Subject:From:Message-Id:Date; b=HIkMnwtMcv+I86LgSD/QCaspekNv9qtP6Oqz1+Hv6tyXkWK/lmXDHW5QQGRSRJc97wXbXEMkSSUJWPSv4GDCPrJcFE8Uca+kSB6Rdotup1F54DrDehB8Oujpz/3aqR1MLSVMLPMYvQJ1Zc5e1a4ZSBNk+ylXX9TIYQoQ39zY6aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9c6ApXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9c6ApXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BD3C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781859393;
	bh=BVFRJh7oqD9zAhbD8Xcs4bYDZ1cx8uwHvEmURf/2B4o=;
	h=To:Subject:From:Date:From;
	b=E9c6ApXJYYzZD3dhs8usHzoFuovwxTWySdPvxIhluosmJo1Xl1s+jDc+ARcj622S1
	 qVUsfrNBmoKbTpGt0nES3p33yDSE8k21rYCBTv0uLLs+UoNIXjMLDT9fd5DaoFsDB+
	 Cu48wNxTvvwzvaxcg1fAKKxbVA48zx+GmkTKpB4Urhhl1+bUWDHukHNn+ghACDCRkF
	 3+dTLvdxXWuoL5Sq9GEHLGMn02xCxFDEWrJheZHU+IhhR5qnI705e4ExY896LqPD2C
	 pk/zfpDwhV4ti7/hMd8EAFCW8nTN+gk/Yh7UJkxGDEdKSPoCjXQmtUTRmmyLGXS8CC
	 A49hyv0jeYcww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3C2CD98F8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185939369.20874.11520637349371517733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872f145cdac8f1e0beaf8d6dbedcbdd6b1bfd86368a1d7ce309c585d7a48a0b0
Date: Fri, 19 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781859393
