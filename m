Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7DA1CEEBB
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734437754; cv=none; b=BlfA76JDVHhWbl0nkZwzEtWDtGtsphhG/OPkdeoDgbML/Da+Nv6NQYhUJKy9omcqJcrpX1BTPjZZxNpzAAWOkyoG0fIu0TCqLAIK4U1H5TZSl8Qbg7MWhvwrtksTjnmGYpXmV6y9hlnw7ED/JKTkAIkh+Mb9td6AOwhi5Q6klGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734437754; c=relaxed/simple;
	bh=b1VAgEdrmID5fefLiBSEyoZR5ELsfi+G5U2YyuAEK04=;
	h=To:Subject:From:Message-Id:Date; b=eDtoNI6MeRQhLF/ppqi/yUGx5hWIY204iqDAWWELhKbeesRuSEN1meyB5/z0/keCIseVLr1RGJNc8fwGqcPsvTL7rW9QbgiKqOiGpkAi42qHbno3YXwzPF536lUQtmaHMG5GrS6uoHh2h1INYAhtYAe3wxpm16/HtAdZJf+NrmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMeK5j3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMeK5j3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4624C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734437753;
	bh=b1VAgEdrmID5fefLiBSEyoZR5ELsfi+G5U2YyuAEK04=;
	h=To:Subject:From:Date:From;
	b=aMeK5j3AKeAnZ9fE1HGs6WMqACc0qiWKSiH8SQZDNL2RaUbTU7htR3eRWuN+7bfn7
	 Jb9iB7eXyH9Xhsd+Aym7nJ8QueHBdPNFGnEehcehzR4iFBNAHygwZSBqeFMdkOp+u0
	 Cj5PENeoUL+JxdgvV+W0uSe3+cMzWTMeK/w5v/34R30up87yKxNIuO+7wl6Ag9ozQ+
	 va+bCNa4SWmjbPttt6JK8dF3Ubr47ecVf+DLC2UuNkYxajj7snT3x0mGZRvK/2u0Ot
	 LFdDcomULCE+l0ZWjs2r5czpf39xBRjAlZfGJew4ZRGjWK1+0UaryNFxXnjAKDykKN
	 q9FlrHxVF1XyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB3E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173443775359.16075.13661311653622578785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd268ff2da25563a81561b061a66d7956b6dfa7f016b56d0ef922d47fd7e545
Date: Tue, 17 Dec 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734437753
