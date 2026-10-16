Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5EF4DD3B5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792166434; cv=none; b=PWVYVvprPNMZe9a8te1QfdBOAS1Bavu6MvTkNVnWGZ6kcUtfw4VmRGol1ZS818k78ue8Zsyj9Yhor3hGBlpEaVnfq2TzArKWjiy2oD3Trlf/dK7z33D3HNXweo9rA0cYh3UoJq+snQ5rB+YWLgIsW0PRnAGbPDnvpV1cnJZzVqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792166434; c=relaxed/simple;
	bh=pnYFLKtUWdQR3qq1jgDSahuZz7XapbrD7WBYLdtB6Mo=;
	h=To:Subject:From:Message-Id:Date; b=NLZwQj924AZTePAbdU0KgKIc7bUDgycvR+wGnfY/Knulc46f2wxfp5neQfITeV3PXVKBDu417QRxseydmVRVE1V43wh7u/ui2x3ncRyEnkgC33nho+Om61BuzYdzQycEPJI/A3P1VhKjX1SQLQkn3TvWmK9Uev/f2fpPLxy04pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTv/Zgix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTv/Zgix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E407AC2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792166433;
	bh=pnYFLKtUWdQR3qq1jgDSahuZz7XapbrD7WBYLdtB6Mo=;
	h=To:Subject:From:Date:From;
	b=HTv/ZgixDNspvo5P+Abe5cROKiK1hpi4b0UxkHDTE4ucQx7q9KWHcabJPivHV/lxb
	 nJKGSQQXg4GE6nDIKCMZc54I1900mPTDH+51SaisnZssfbS0sWQIf6tbUeOXtc2MlP
	 6J3v7yqHno1mvY5Pr5c3BrwGbme6VSu6l1WAGjf0UuWcVymnyb40XBe+n8gqPKg6J+
	 sz4XJGlC+dqr6HjzmOBXJoo48m4fGr7Gqnj2wSCS4z1nPd9APmvNOO3bCfb4ljvE3z
	 R+qvZViZ4tnD+gWgPLx5qUSewAr4z/lsfwPwks/R4P57pFEdv3/uuVat6aYrEjfOGi
	 Y+Ck6T0DGgCQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB174CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216643374.23654.15770067170177638378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a62d98f124449ed9f18518e71386058ba059d75bc44868842b8aff5f8404eb
Date: Fri, 16 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792166433
