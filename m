Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D9C273D89
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751869794; cv=none; b=tqvr6seAXMcZUusBI6AxEiHX023gkM/Ky8vvfDYAyCXP1H/ymi/kxnK7zbaSGChFVORVTaKro9vwgNz+pLM4EiwcNu6VR2fBCbAier0nU7An/uqga+F61Wdws7pldk9YfUm9T4OqzkNNZw1Pl4WDyCReI2L8AdK/b1XkgntpHaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751869794; c=relaxed/simple;
	bh=EygCEWtXbKhe+CEkG4RRLepYvnTU1xLpVdvnfeCvIQo=;
	h=To:Subject:From:Message-Id:Date; b=ZwUoBn+Qf3u4dokB5nfgP6CwXxOG6lDaSUZtbCLK1ClgNY7ErEX7gLjIjVf+dF3GOr8/RovSl/qFzV3qcg9jU1XuIGX95M5pqbjBYxbw/IbqzXZr6QJaa+G3q+x1D+NPzzaxqu3cqa0xmX/YIHQzIX1E2BPEFMmv1e7UPVRV+jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nz8ZdpJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nz8ZdpJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28CAC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751869793;
	bh=EygCEWtXbKhe+CEkG4RRLepYvnTU1xLpVdvnfeCvIQo=;
	h=To:Subject:From:Date:From;
	b=Nz8ZdpJclt3h55qlL93693Ky3aakk2RrrZ3gej7IVb1ChtlB3z0LMX3UKUhMH1dFW
	 REYUJBUYmhh91epUIZIHL8osGH9WSUi4GqIM8iae8cmTUi5SLq6kmCdU+5K9RUztzg
	 58wR3GXJrAAhTfV0Tld5mHWW7NwiSdzlYPqLhJ5i5wnrENI2Np+pfPgAkmYtzJK7UF
	 ecWmiPENYJB7NC0OFrvwdZUinHVc2H9+5lW49QD1eqq+8LtqTdmsh2Dn9Tt2sk9XZn
	 9OHxJSK4CKbAsiS8UrgoQFYKmlQ4BN2ahTxIxhXzO6udXgtXG59RaZegfYSiiH0cJo
	 dRVNZR6z2L9kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E9C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186979357.27816.4007915488122289727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f269334025000ad9b38aecc87c72bcb53ea85d99f3832c58aff64a64e620061d
Date: Mon, 07 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751869793
