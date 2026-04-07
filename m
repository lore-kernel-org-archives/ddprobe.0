Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D630374E64
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775534134; cv=none; b=rza/mpxo6tzCGBtGlEfmyq2sKyr1wMNDdZxiEXOSGS0kGH3Zgdkh5mDZxTxvcNZieJ+X1WULyIqKpGovl+TnkalGSxvEZs/+jx7d6Pt64uRNSc7aISfJKBqPjiM+HgIxOp2/prSkZR0PCFvFb4b9cmSym9ddaiSkotkGjdIw02c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775534134; c=relaxed/simple;
	bh=/On96eUZm2pAIITDvmzlBquuGP87g1MnKRA9mKs0164=;
	h=To:Subject:From:Message-Id:Date; b=BaJPALVeAZudBl/p4b6Zl7wCuu4JiFmAyohzQAxuATcczBBi+6tnkAb5/hoZAvXzDZGSwhvMuiCsJsFEeuHQ9tjhwDdZo2J9lJorV4fATj43joBX5Qwkc4S96zt+wV0577q3P5J9gbRH2+RyuWjnPlCRmkbAJFcyVdRoOHDIEHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSPfKbXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSPfKbXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D17C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775534133;
	bh=/On96eUZm2pAIITDvmzlBquuGP87g1MnKRA9mKs0164=;
	h=To:Subject:From:Date:From;
	b=cSPfKbXj4+FpAGArRMrA+K9S49d4ZhODCdMcox+7+Sg0AXZa6y4OGrcmXRvb8d5Dc
	 of4fE+1JpV4Owl17wgDlN7/WamrgwdiGDg5Je/ZjWffDfEPKAnRLeRv+cWSMUXTmZh
	 G7BB4Yy/yaDmmRfAQ6+OoLVG+ovb9CyMfpxpVHzbfi68dDBm6njJdvpcDpN2JYPt9u
	 CLGVITVXqvYEjgQ1bwuXuhvZiE59Cz53RJXVcCrqY0+4xQLipX+WLe2u2gwPUoK2sM
	 iPAaDFXBEg4OC8BfP9Rn9mU4DvATuH2rYa6UgWJJH0DClW+hASvHOWgUBI0QTh3QrQ
	 qglgVeKB6uRUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A957FFB5188
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553413368.31618.12702456987024827854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ba9d68cee03a72125686a90361321f2152c39172774f391620a0e3a7a32ec5
Date: Tue, 07 Apr 2026 03:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775534133
