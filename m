Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E21150997
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778986834; cv=none; b=IHl/cp3R5J6iUbEMBbeb0SUFfoVkyujMYm4IRu1galAVZ89SMDXaTE8iJ+Cx9qB27vhCHHPd6heeSdeYSdplnPbgsPnyuwQKo8PftEV1AH0RZJhW0pAj0PwQ997ib5Z3Vv3i4iBVZweOvNxA1s1Yq+y6i+yKehlPBdSKFE8ZzHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778986834; c=relaxed/simple;
	bh=KxIuSFO5yw/AEDEkOVgx0rXkp9gNI+/4eA2oybVNOzk=;
	h=To:Subject:From:Message-Id:Date; b=oj/8xqWsSs9u+xuQHHUUvH5yKi5MtTdW4yRBgbdW2SjTCzAVAxLzUMEJ2h2e+iaTdGtL2j5X5Ay+IATlp87Yc7b5K99Xths9KNGN7dLo7SXF56mziR6/pLcg/oelk5VsqCQFNIwE44cp3oDM7L2ayEG7Copi8fL+cV+Cbz0OJ8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHEyYIy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHEyYIy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42E9C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778986833;
	bh=KxIuSFO5yw/AEDEkOVgx0rXkp9gNI+/4eA2oybVNOzk=;
	h=To:Subject:From:Date:From;
	b=UHEyYIy/EyUqc+ceVDngVQgkB6r3lZFjHbng/fazpQHkt3M6eLBmU/9ZA4N9PXH5r
	 ChOGfI0731dTEaYxdnRXDH4L0xAbE5dsTDSHAduSiUh9dFNdF6CQ8mQto+RHXnHsHc
	 inVlMGgTax2Whnuc6RYTDVHoy2DQIV2egKL1TE0TOJdpRuk0yVSnDe05YIReoeXVjF
	 xmgaa0QBpKzoXnpeV8mSicq+nlFCVh57uPD54vLFmVQVjw8TE+qZdpn2k03rv+BNa4
	 53zm+QmLj1Zdl3y0QD9e1EFyUuoh58fPrhwrhz7gXy5wlCLDCtzgzoKkCJzUyXe8Q1
	 /Ck65I858mjoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE80CD4851
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898683369.7734.12300264785496700224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e93855fd0be0936a235f4c5f2ef32214f77fa4bcc320e3c5c9654cbceb95ec2
Date: Sun, 17 May 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778986833
