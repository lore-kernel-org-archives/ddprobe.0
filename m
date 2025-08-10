Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BBF21B1BC
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754847593; cv=none; b=qugVyWCel+EEIR+z4N1362mk2lc4SuxBf9xEBAhGeeNevUo5f2u+Lxr4YxZwtfVG3Mwxmn2C1yx9mut9zGtkjf8Lfp0xng/20xcKIRUaXtyYNGYiP+Mb0GM2lYDX2EBTN2BLSVlz6tQLWefXxGWqHYOEVaNo/+x2US9j315f7LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754847593; c=relaxed/simple;
	bh=w7TAbNrwCpxUu1QZTigT3w2tKwpNKCiM1+7Pt6AX+1w=;
	h=To:Subject:From:Message-Id:Date; b=UjazWo/JDo94VjQYaQYSS9UNg6DYLABibF4yfJVj1iF2hAJKJyrTBG74PzK9990PX46jAwFYcX5IkXqIylAwZWVzA3atiEc4m3tmNqvFp6AAiWmm5qmM3nFMWwRVAfZgp4m40F7OkC49UpWTVW8Scp4mQtbYoqFKMXBZfaAjiuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Myq8z3cx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Myq8z3cx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0744C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754847593;
	bh=w7TAbNrwCpxUu1QZTigT3w2tKwpNKCiM1+7Pt6AX+1w=;
	h=To:Subject:From:Date:From;
	b=Myq8z3cxwVsu+QMgKkx3MAZT46Yr01QlEi1BE10H/c4tC6X2bsp1vsf8fi54xqugu
	 QCN2kfEAXl2xHLfm8/44Qix0EPAPC+t2K6z7/LQ878D4rr1Y7WAZSfRcwaBkBKKm/v
	 b2BxHbnZxUxmUpeAyR+31HHOkumMK7s96O3/hmq+MbLkuDDywdoPrkY3/rEH6egHBA
	 9f17MKqUhUfRWJmsYu8y8UEEMkBe4ShnLZefM6/5xgSTp83SXM7kl+SMbWMm321cSU
	 yE68q76xVcKhz2nQrolvomCp06cIVAtIgSHiZrfdcYPPBtN2N+P/bv1NawRt4qBO3L
	 6lZu2Gp8pDYHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A3AC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484759357.3218.12744245178657734776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32fedf965ac38a8231e709eca1e9ca5cf067dea75fabf355d5488a05c701b630
Date: Sun, 10 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754847593
