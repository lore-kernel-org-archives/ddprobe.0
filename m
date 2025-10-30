Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0C036A616
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761849594; cv=none; b=LK1hwGQkRGqxGA5Bcj9dR9cskzZLEBMIRPlbTK9R9/RzMBWHIKQW2jjrCtgLFkjBEM9a3q4mnKVuF7ypnZbM+iMWuCn1goJrqnftp/SRVtuUizL8pQoK+c1T1Pa0MLfMbO/8s5JeueJe3aXX6IpnlKUco4zQVQlVmZ2PcAsxoJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761849594; c=relaxed/simple;
	bh=ngnfGJekIXflpCKFz9ZrCwyoeLTDBbtyWapk6j+AFGI=;
	h=To:Subject:From:Message-Id:Date; b=Km5n3nAJ/RebIBUmXH7WamcqpA4y1R20H0G/NFgH3EE5VIV6fqAr0WJwnjuWhpaP1apc+yXFkSw1mvFTaCkRR7EmcN+j5g0fuQuDz1+qdcFoxqr/cwTxY4m6lP9kdDJUoXPCG7UWjDlhXicAULQAGD3ywD2Emo89x4j8jpgklLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ir71pOdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ir71pOdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBBAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761849593;
	bh=ngnfGJekIXflpCKFz9ZrCwyoeLTDBbtyWapk6j+AFGI=;
	h=To:Subject:From:Date:From;
	b=Ir71pOdPHSB+e3L8Nj9jKtN9CNR0+YnJeY6zltR1GauJnxgocWieCmqB0lPyU35I2
	 Nddj2mc9ozHDPvZhce6rUVTzsKnEiAYbusiMtkw82U2077/vsNJdfp09jrPTQYAMe9
	 4YrfAzYFIHUnGDDVYz3r3rl7BhYZmaimPEZ2VG4G8IHPwLYh5aNJDV/N4ddjoT1EXh
	 3OJo5fr6zGD06dEgxnrgGoUpzjWjDExyyKjHOctk1XC2L1JkLrOSSvDnhKMBWQ5/3C
	 sPbZyIyoifCQ/A0TtGGDJfYZthP3R+/CiyjnJxQHO4fD37onZUb3ei9RQ8ceOFtRNw
	 7Gqg2y+FzDVEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD4CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184959359.19848.15726613912819775009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e81800d6546a07cc864ae01527ce2ce1ca0a1f259cfa664f403ab244f9aa884d
Date: Thu, 30 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761849593
