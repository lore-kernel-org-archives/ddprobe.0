Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8515357D07
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785781834; cv=none; b=du0EQDr3T424+GLe9fnJ+/lUhvPxynKXRKtb5sMTFtzlbHXetr3eLSKcfHj2Lmfn1fjOji/UiVjKXtW7k0NCaeKu7t6GEN1TFDsqdgwhhIHHQd1mcbqJy6QNFTPLU5xVILXze5RX89lY3x4jeYD2iamty/rzKhbjItS0R9EFd20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785781834; c=relaxed/simple;
	bh=EKDpO4xVyCOPtLkJSOdokxssLbDMrceAUz1Ax3TLMSw=;
	h=To:Subject:From:Message-Id:Date; b=PNgnTDU+4Tbbb/oXASFspw6bnSyDvPd+Ov7k+ebSW9E0Lhxn0B+VCd7VEK7NhbUJDWu7oG4VEsn6yYSqgqBPAzAn03YVZvCQiCwsu0i8GDkpLbVSj4nvEdYXP2v7Gjix6TSeg0IsL/XoH2mEwSk0iU4PA7vYXnIBD24OHCd59Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTOt2XPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTOt2XPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9F1C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785781833;
	bh=EKDpO4xVyCOPtLkJSOdokxssLbDMrceAUz1Ax3TLMSw=;
	h=To:Subject:From:Date:From;
	b=hTOt2XPrXNwmi8HCTi7Q90FxwKmfTy0zIDeAoGTILfmfyj0K4XstJ79521DpQAxKt
	 nlCMN9LxdkjYB7J32n0LEtZMqdipD4ssvyYDQG88Um0IVm39uWELdX6jwHm465/gVK
	 q/YDdQ9qU+xhuBcN5A0WraNM1Y9N0+YPWdXqP43aTbKjkBHO+DkJ/d36SslhuK+l4e
	 lwQMVk6v9JuQIULNqBrg8o9DisKPOyVp4O2uig62gPMmnG1r62DCftYYa6dcP3pntm
	 ILtVpg/xqsQ4+8cAec0gcujIxdjUrQ+ZuCnMwwv4ghNT1eIQEaU64qiIv4BcMlMoDV
	 ZFJX7CLUvS+oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB0CC55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578183368.22066.6649869987828503715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc43463f0f33ac1d927e51510856e3868cb0167f4fbb4f23710cd00ba548f9ad
Date: Mon, 03 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785781833
