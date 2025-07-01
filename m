Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BBD26AD9
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751351994; cv=none; b=FTNdip3N+WzLOMKefP2ih4uqFEMLpwQDmY2H56TXGAoyhYVO6loNe8ALYPbjaVj3kQhxlQy6pMMJY33keK752P2M+M1jaGHQIhiTkVTZDSsXUvcYC9Ws3jMsDDF4X5fFc4CBlTHzBEfbGrNkJgPGE1hmYnXU0/4czcVXyTuDU2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751351994; c=relaxed/simple;
	bh=UH+FrRx8dKHsMsIr1Oi3l2b6k1PiO4mcJcUh+4Z06FA=;
	h=To:Subject:From:Message-Id:Date; b=Y65EDQG9QTi7tlOcDXFV+4WdqwV/UKE+Cdr9ZNK8MBeYs1TVIlhus9tKxjeP5Mf1bmL+HFmaaunY7mLipzHgBmyddQcM3vpTWX9BbcVz1FCo2VyK1stlYyfMB0IYQnTIGAB02Z9OxlIseFZ+RbwhnB9nNEjRaLBer8zr+MyjQmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpoVADst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpoVADst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E6DC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751351993;
	bh=UH+FrRx8dKHsMsIr1Oi3l2b6k1PiO4mcJcUh+4Z06FA=;
	h=To:Subject:From:Date:From;
	b=kpoVADstZpUwjPDVbsWk36DvbRcG42Bnrigw9iDYUT+7moDtBGNLIlnee19UFsHp+
	 3jIVtfeYia+GAPD+PoNRJKcTQWDw31jDaTdKl+lLiPnSU2RXkvmC4BcaUh+qywMv+m
	 QA3TYcnoGehxNgjq3ifos3CiZQDpS8KuETZqOYm0YHhs5Jlk0/KJhYSABpusJ6nywq
	 Kw1fzJOS1f0+9OYR93XbDSPdG0xNmlTstPNxwhqYz5mRr9c2/1C7Sce1NNVYEMvyNL
	 d+TDGegb9Q/WHs+WL1iLs5BvP/Gsz90Vm6l/KcJgbBJL1HVqYeqAeR9olE3x0850Ig
	 khY1UZf68H15w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F606C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135199357.20315.7715874331613773507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325a42a67dad0d665817f57d480b8cad133dc081eb36b85b301619d1632c228a
Date: Tue, 01 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751351993
