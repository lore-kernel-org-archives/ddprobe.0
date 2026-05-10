Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F79C2F8EB7
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778396434; cv=none; b=APhRPqkAs+XfQ0+nyQ30i7Fi4wDs/CPxgBeOhaK9evt33LR0FoXmnYg3iJ8A4u6YdIg8wxQnveVDbAFAt2qLnSKDXAAcwMMEKMbkw3CuzK7sPRAIJzmf9cYmW0RqfwhazXtyo0sldEoXwmryr6Ou073c+rnWMtCils8IJdE/mxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778396434; c=relaxed/simple;
	bh=z66JCwdUEaZo/02HLj5aFDqYJdLRQxD19iJ3tcCmEQE=;
	h=To:Subject:From:Message-Id:Date; b=Kn2E7n1j9R7UUzdyOmz3DPseFkf5jCgmVHW0Zq4Bui3YNkwIQ/bCmnIXV7m7e9BcXYH0E/xkb53v4SF6JDERBjhsbskH7JsD0CPRoOYHMnERcTmr+t1rSk1MtD/2q1s0H2iKryojYDFg2yUp/UK0TntmscvqGGeq5gvSTny6fXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQh/ffJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQh/ffJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C47C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778396433;
	bh=z66JCwdUEaZo/02HLj5aFDqYJdLRQxD19iJ3tcCmEQE=;
	h=To:Subject:From:Date:From;
	b=WQh/ffJe17EwWlVS6gzYBfznTwkymrCnlLLR/EVroahX9UGzUVlQAThPz8PJ3lUYm
	 PJv9IncqD1+1s+3XvyiYM/S+W0Qj4ymCss4VJyubRt6fWQnjHPaQ0uGIn6i7jj7Aee
	 AFzCNaDWGncG6IghDhDM/4x8e/0Vy+0KqX2NLzemdTyAXnBfQzxfrZ3qTJVk3p+qC/
	 IzW9im0bTeDMXL7pJOl/lj61JWlQhkg3cjt9rvC0msZTZdyliatir3VHtXwyKlA6xF
	 NLSQQMbIw7fDhyApS62Akg5r5+28Jlhw8G9aEftqpCvn3Wb72rg3IjNVlFvTZ4rbsG
	 omd1z+7f/Mttw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA6CCD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839643368.32340.10751374872857434922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19bd9d51ec6d95f6ba596f163363dd764b76f4fc115412c4d8ce0f095e839ff
Date: Sun, 10 May 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778396433
