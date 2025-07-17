Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBAD10A1E
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752720594; cv=none; b=fEjweE7qhsK8xggGgnVQmRylb4e7wy8KOQyS7kebSegBO/n/5Fk6lQvWdF0aOtAcrKKQeE00tKDdIdXfYprPBVanjD65NCNNtjWf2b+/8wX/pj5laoQ4Or7s86C6Hf3sX/gxU/N4LkNwLxYhyyGoJjax1IhnSKZGypCw6xpHaK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752720594; c=relaxed/simple;
	bh=8vUP5TaMIGeR89xLPIaWSCXLtRjd0+xpqK+bl676EPg=;
	h=To:Subject:From:Message-Id:Date; b=dWtKmVnR2976kZHXJsjLjCRQ9T8s1LhuXK6HLM2+N5iNnx7xBqxjEiPm6dSMXmzvOQGFPtDfPfN96WyWQPjsOuKQeSlTQZ9ez6l4iugnk3Wewr8H50dSfR7J+dR9XHFAZhxVMJBY061CURTM2pJLznDMJOdh0l+0knINRBM5/D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+OZ0VMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+OZ0VMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A35C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752720593;
	bh=8vUP5TaMIGeR89xLPIaWSCXLtRjd0+xpqK+bl676EPg=;
	h=To:Subject:From:Date:From;
	b=B+OZ0VMgmDOEQ1dhtZXIflzeXobRFMP4zPDxC2jMknC5ZNPiCxWgP1DJxO6XMLDrm
	 OWI6kshLO7XnYb/Vg5/R0Ps2Y+exA5iarjc9ohgmnGnvgs62OJfg6/dKZQHpMzw+mu
	 wDsh3AoGNLxBaRqkBH90e2606v+hz4o5yTdllIVwhWtwzBjwOt8qNqxq4tN84Mv1Os
	 yEM1KoGyfJ7rbCIpVHlD/4LzPz6gOOpt0JmbLKU6NiYGHbgxUW76F9RJcUDIpCnkJ3
	 cxT4LJlFhUYGiXq03Qwm+XR2+i02qFYbCRxlA8wVJyKpbpkbLrOMlTAlMVwQCsNeL7
	 R5V3cVIirYGPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A48C83F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272059358.1647.17679754778497456667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768b22e60b596a3c26c02b521336560265e2831267ca7b60281bd574ca84503f
Date: Thu, 17 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752720593
