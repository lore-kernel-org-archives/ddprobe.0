Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231142E9757
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778102854; cv=none; b=LugLEYatwCaUhlLDSMb/wQimuMN9u07EVQUE+fYFONgrsYR4ZH8pMN8L7n8Whe8i7lFZU1UN/E8O39cpC0FaFehctSjUa2e6NXXZ6nxrZ85ZyQ8aiyhsI/97PKCVB/g9UMk7QhaiO1VLx5qoqbgqRn8jLjR/Tvks/tpwITdLoz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778102854; c=relaxed/simple;
	bh=il9/5ikN1bpkQm9hoDnaAmAOPYX4r+P/67EnuirpKB0=;
	h=To:Subject:From:Message-Id:Date; b=fZjm53i0b/ZkKpXduvJZ5rX4xQ+fvpFx6UFaoFjbdK6k5IslJRdYcDjme+i068ZkuPZV3V0WK3+fXxZiIJvbgkDH99n/xnFuPw4rwmyxq/abIHrlPFJBWiuZLrkcP0pz1kn93aYzy/hlDMHviYmNe/80ukUc3H/LcXcFKi6Vux8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUmzBwqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUmzBwqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B7EC2BCB2
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778102853;
	bh=il9/5ikN1bpkQm9hoDnaAmAOPYX4r+P/67EnuirpKB0=;
	h=To:Subject:From:Date:From;
	b=YUmzBwqx1yBK5ptQ1J5RZcM9dGf0SSl1nM1Cbxvabm9QVQxSfL1s3fPa/GtV9YHUg
	 WZ2akE5lr2do0k/m2arLYCkm6FbXaWo0MhjqjNlOnlCdJ+yAmjf45dfyS0jEhUJScu
	 bJCRGrG7Jv1Eqk+mLRwUvpvRPl3f4BKj2Zcwp/KujPEy4i8WJvoRAxzVD9rzYqbwEn
	 0oanrymjyyw5qwJ7yUGa+Z61fblIJ9XpHvzJe/cKPduJ7Q3gXRFD0BA0QmIec0ZcEs
	 PrPSNtwzxmx8SUkp3yf/CYTnBb6k1D9OLznaRd2o7CHN/xWcephoOtO+uIS+Z2VFvH
	 7vE95B+RrGZsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A63CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810285369.26288.2277074604673631145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd798b6036206263b36a483529859c5775a1eb51815eaa3f773fcf272388c5d
Date: Wed, 06 May 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778102853
