Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229A02C859
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759112394; cv=none; b=UjspKJolZUN+wLB6fPS2HVIfFnxXXhwxNtFRHE7kfQTGWAAVekIe520WC7gOi9FeZUzcuuMWalolPxnUKiOk6x4HxZfq2rgxo095KIJ6GvsFwCJim7Xl8aZ87+iNdXGxiZdv6dC0D/v6X2S70qvmwH3rIQrW/NENHDjxlWYG1ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759112394; c=relaxed/simple;
	bh=v7asecvZUN8owlizpVBKCLOp2nKuBMNQTK2TwM7l+f4=;
	h=To:Subject:From:Message-Id:Date; b=DVUp1caTJhfVGjbYsGZYNGz9cX8B59/otjdWRvpB3L6xTimKeu2poYdGAH/hSnWxvPwcr4kkFAQ2tInu8Hx8Nk68cIP6OlRdDR0G/Qht/hi4OBh1NvXKEKQ01CI/g/Surc8d3yrsKyItuGGiCOgvnnDc2MjLIIa69dDvGhj+bpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKl8lVSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKl8lVSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB43AC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759112393;
	bh=v7asecvZUN8owlizpVBKCLOp2nKuBMNQTK2TwM7l+f4=;
	h=To:Subject:From:Date:From;
	b=LKl8lVSXwPGAuVhcbhHWiq0dVIh0EKMQajbwyBRyAKeKSGp0W77t6XffBZCeO+npE
	 0Y2W3CLtdFZSGJCEC+QIwn33x4bg3qQ0gF3QhcTuh/pQiBNZtNGgPkKTqJxH1mVkas
	 78BrdC9juCFTI7fZ/5h8cHiP905nNNrcRr+bRpfJAoP9Xk109ZrK6F2fskApJIQWiW
	 iARAx5d5sn8P3VTFkRxmhcnBkREma+kgDL2/l4j8xnGrVZuExf/GbtlZYkfDONNUtB
	 bnEf2ZPew7UcBO48Fj0Xl1hM7TV5HqeeaipoooF6I4obkan+2e3Kf73K4DNXwVPgXl
	 fyQw5jEEgMYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A9CAC5BB
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911239360.14076.7403074750396067444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526f01571d2f3be486a310fd5a95e2356408834c51e56c0ed9100a496117c519
Date: Mon, 29 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759112393
