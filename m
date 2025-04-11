Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4812327BF85
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744338595; cv=none; b=OyC5vJrf8BaOFcXHblDpUI9pLKOH3SAO/3MCZWvAG6FzybqYf2+x0KZyL4qoDLTArALafFrdTY1gZs21eAWL8LFDE45RP7OFKHy/JCE+8l8aVJjWbJvSPMRNs+txzs8bwc2Qx/7uwPhsgAXadm7IFal0wU3n24S0qSZ/78y2Vqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744338595; c=relaxed/simple;
	bh=+xwjuERQSyp2ZA93LV4ILOvmSLb+NmqAtdmrF06/BFg=;
	h=To:Subject:From:Message-Id:Date; b=WrzqQ1bMtWNiyczFviBLBqUdRwftb4fqT7ffEw/tmrvkrqh8E1p0jIWpB3cHFYfCMWelYGS3x20ey0rVlEk75KZbISEE7PDkaZOQhOwmHAencmnIqT9ValDNOi645G8a9J1LE+ElQgSL6Kj30IZa2LRInnvdv7mMEbFDf2qMXGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vis6FNzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vis6FNzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6905C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744338593;
	bh=+xwjuERQSyp2ZA93LV4ILOvmSLb+NmqAtdmrF06/BFg=;
	h=To:Subject:From:Date:From;
	b=Vis6FNzx+66N5hkEonUUWGCWh4QN/duaMfhGQlWfUitTH2n0Fyzmz/SH2m9FS5yaY
	 puCJYDzcDBcduFlqK5VuWQZMYVJJSpk4Hj21VU0MehkjhBUR9tPEvNoBsaL7uLSUrQ
	 5+sAInPUanNO2vptCGS5h7EXbEjmxn4nBDd2yfFw9mRkMfIa/EefhYsJPCQP7Pwx3A
	 qappa3lBAzTAL3vCzoEIyzF2hqlnYymyXdEVrfeJEmV+Qry+dppGzXRwD7VdEKPhxm
	 GyQ7oaEB0p/p1GSW7tIzqc8/3ABfHpKtSs6PGg2qlD1m9h1uLDfPt0wgFDhFZ5+vCl
	 ZYp7642EFmBlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2C8C3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174433859362.15714.10067717387224958768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237df87c00886a672229ad214db5c482b1a407f51ebe97a8306e51851a09abf7
Date: Fri, 11 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744338593
