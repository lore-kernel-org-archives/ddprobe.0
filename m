Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D80F1FC7FB
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781471794; cv=none; b=qAlYHoqUZMUaFnhhT6N/qzDOB1MbedHa2N7DkwD5WAj10SMKLc6SsWh9KJ/gbrtQLQCaNiJCzGBcKX2KEtxP0KurXnAWjCl+CvkEetAeXn83NjVB9qumcjDvyUVum06CZOrglNk5iAfnvWOP4fABSmFtufvYAzhg7Yx9Bp2F7ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781471794; c=relaxed/simple;
	bh=yiL1xrYD6dk88b2c1Glnseh/pqk9B6/+M84iNOGLwLk=;
	h=To:Subject:From:Message-Id:Date; b=OzEjy+9fxkDDUPoBK4bC8HrJnDNLPNqjhzLWv+LyxQsEUT9gaGeShqKXxhHCTt0M0Ec3G0IKGYY47A1NlMRhWYCknWMWtTGaP3IStJ30+kA9ZUVx/hZlVHl9b6X3vvuQ0X/fD8OBeAGpFNyjSjhAgiYKVB85qkL6Nqyg8Hmj7W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtFneb5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtFneb5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC00AC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781471793;
	bh=yiL1xrYD6dk88b2c1Glnseh/pqk9B6/+M84iNOGLwLk=;
	h=To:Subject:From:Date:From;
	b=LtFneb5VOYUk+mQ2fqWZqnsxr0r7S5LQj/yEkjRKI1h15IeQBCh0AIcIAOwgb90ir
	 LQpYwYsPZCwopXnhEqrAu02xHyhMoqxd8gLFXfT05xh3EzS/etdJv2XGZkoOyCZHXB
	 0Q9r83D/NFKkKZ569YmWJPvOcRcwZSmwbUWzZybYkPC8D7XlF9FqoYPiNheVO6QuXl
	 OOLQqkpe9qILbcFACXg56hF+MDC4hQB5amBPzYhzkhYosepuHgpH75ufUuJjUXZ9Wf
	 yU84ToKZA+3A1aPmrbuEJTTJkwdDx0pSdLJMQQ+0+0+nr1xV1rDnlJXTPEV9zD6Ni1
	 d/3elT9ujUPtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF468CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147179370.6106.13866718552660204910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47180a001fbf0161c8f5fd3e4529d1a6a215fcc3e19dd8a375788a463873a891
Date: Sun, 14 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781471793
