Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532CC84FDA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717578383; cv=none; b=QrjMBMMnC1dZcx7bziq1bDCW3OyXsZgGdZmFtLLQnAc3tOFiJ2HqCWA6ZX6uDX/ysqTlgM6g5G2eHifQc+aSD4Znw84vmYpRPYEo8Ft/1y47Wp3PpydNjtDja0vL0qS+CN8srifdCHGltBcRYpfI9J0Abz/RcGzl38LBdqCQseE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717578383; c=relaxed/simple;
	bh=nNCcgCexD0CgS/CjIvyfLUzegmiTJU/nGa82BKj5vw4=;
	h=To:Subject:From:Message-Id:Date; b=hJ5pWZvg8b1AI8fJs4pMEECG81awGdU0lO3Lqr1DOYbktpYhIURg/LEh2rp1VmBMVpVIjuToDdEjfcnyVl0fw5TebkKPW8fdxxqk8IDoGxjPXId6/wRaB08ACVx0/XFCEtiTY5kv+QMzhDvduEob1ozaCYvvi4O4p8YZwGs07OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pag7rKAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pag7rKAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CEAC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717578382;
	bh=nNCcgCexD0CgS/CjIvyfLUzegmiTJU/nGa82BKj5vw4=;
	h=To:Subject:From:Date:From;
	b=Pag7rKAFnglkN1nSLaPI+xswQipwfQuiPZ7Aio40Ep5zzzJObkILmb0T4L/XDxiFm
	 76nRlABH2aVJArNFMfWemrfP4356bCijiK9iAJydEAgzkMq/18/l1XLYTxvbNC1E4T
	 nopeBlPsRA0K4MZgMFBS1Ookl78fZVXOqgpa37GRgOhQe6WU2LfVCWt/KSBJc11V8M
	 OEW2Ey7BsfLz1R514uWLAYD+kLErIt1iRE7L1MTF56Q98Y05mwMSc2oljgk0KJgSJE
	 Q1ddyakdrF0QSFuROBpKmst/I2tssPBHx9Fs2v4OkhoSBXBUwl3zBKkFJiRY2fZMKv
	 fL7iTze2a4aPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF178C27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757838277.7544.16445831393847607957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84cf3f1d12eee5aa4d4894ce9e2f02bdc20e5a2a180917cd4d0543b147a0c675
Date: Wed, 05 Jun 2024 09:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717578382
