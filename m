Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0260B23C4E9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774718694; cv=none; b=evB9+76E9GJiKGWg/ICsrTnHppLFyhPNMD0WYi7podXd+RIu/K85Oh7IdRUlszMDQS0E3lLetIBzVnJxdN+RbrCgz+NhW/N2z7U0yr9loHJyo5N8e4iBCYpXVEI1GUIQgtRBytI2r/95u3TtMVIJA9UMJqQM08E+A2P16CCXKlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774718694; c=relaxed/simple;
	bh=5KWUIE814YRfYgYNJBbKpiU0JOSEXlS8Uqvb3VRDzXM=;
	h=To:Subject:From:Message-Id:Date; b=uHj3BTqOduN7r7izUbsiRVM9AwOPxpay0GmvcXnF6akJynaU22nlOCxT8Lm+KZiKwNxr1FeGVw2l+yg1Cd+mo1c2mNhZPAYrPn2TawaRtjNcGX4vx1tIo4xna9hDZwBQGn8cuy6RV3bMVHo2QfFj77McsTr1cCbNW1QB2AeC/VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/8ZEbeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/8ZEbeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1371C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774718693;
	bh=5KWUIE814YRfYgYNJBbKpiU0JOSEXlS8Uqvb3VRDzXM=;
	h=To:Subject:From:Date:From;
	b=B/8ZEbeB6VYCIlWVsRTKtj7EdjcYDGcVQktV3BAnKqbCxpC3Hmj+CXFJ95dyVsCIc
	 kc0lfz7slvbGBMIGRhwbuPh2Lkalq8e4fNhCGnpZJw9JVwYed08It1ATkv0UIgz+nU
	 lvn30ASlsWNnzQu1bRR7rmOZnIBPatTtcBk5On5Q0ylBgTJEFBU70dKbq+8SY8G6Q8
	 5t+6FTSU72OsLe0XAi3mMAkq7t6ziy3zclptGnlbuiLMINnUqimca/BOmxbOshkQf5
	 wodCxJj7GkcFQSxWbuZY0RPV6iU0Z3PY2KH4Of1mEoXehnzjNa1TDpAEgnEHD3HZdt
	 lBxcYWKNkd5qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9180210F3DE9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471869358.10478.151431225412358131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c954bb4aef375955c5169722c3390094c350767df99d719b65611f7a399830c7
Date: Sat, 28 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774718693
