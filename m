Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0042FBE1F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783748914; cv=none; b=Z15VS3uoto5kvs7o8+6aNsd91QdznqAPh3Urd8iV6t+hZXZRI0ihQR8wqAUFpAj+IEsKnovwcEMgrN/l/mJv8++a11wjiMmyou2Nct17YxR1ycDM6ylv3ObASHwCx0TVe1zN2dtiGpLmSBSw0MwZHwDFoEt/7+Wt0saqAR+e1h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783748914; c=relaxed/simple;
	bh=0FJFc7UMhz1cGC4QcMzL/mqaY1k2g/X9XMowakZfaco=;
	h=To:Subject:From:Message-Id:Date; b=ZZbFZOAYpZq9Yx3JERu/Cwd16oVuqLKXRcqeRvuMcBliq20Yr8flCvO81OutaW7MnRxr8yY0ck0EplxoXdoRf/sicjh9RvABK5xnFku29FQaCLwvgFwRXi09tZcIFNaSB0R70BbJsk1mb5BZgEJVvZ+cXDTwUQqiEXw2Ye/Bego=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivyJrCu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivyJrCu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB7AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783748913;
	bh=0FJFc7UMhz1cGC4QcMzL/mqaY1k2g/X9XMowakZfaco=;
	h=To:Subject:From:Date:From;
	b=ivyJrCu/QPgLtlpVC9a2N8JS0/vAsfO2nyvQhIKtO+VAjCcc88tJ1DaVYBCuD3IJQ
	 CA5Np6pXt/lX5Gcvv5lPkIVLNm7SUf4hT2zs19BOfJbqhQEocmLEiN3dtDUThf66/g
	 3PIdkSwgO7w0nyowrQj+5d050HI4/e17f66u+Gy4sKYAOzlWj6wvhvRPrwEW/09l9S
	 8aD8EIroiw9HNVUGfN4VB5TLNuC0CtSd4gmoyuIdkbj6/EqL3oJarkVzXQa5ix4CZU
	 GefvO1XDz3Ms0OM9GZ5XViwZ10j0xH2yYZU4eTocLcQf9xVKN4LO7KkRwQ+EuJq9WR
	 9RfjTlUJdQwLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5ADC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374891368.29544.15250598714203500677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45b074a746fc9a89577ddde2b40c73c9ce5bfd6a40df1260e8e352a5b74da5d
Date: Sat, 11 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783748913
