Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261472E1722
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766666634; cv=none; b=BG6nWDx3UTskebFOgTx2ofl6R3cOw4uIgBvufu6Qi54xehgY3NrcX+Vc3cqJCWOWEaQC3/VTSUBmj2OxJuo5BU2gy6UarsRUIkZ9hlPdS6JwzBvQr/GsfReI1vMkGXEHeazM0aX3SiqKcaA5eXcHLMkCSKvCXLb/wIwS4Mj7RHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766666634; c=relaxed/simple;
	bh=QR8672zQUqkqCgC8Q0ixnLUEK0X3QiYqPTyhvUKpD5A=;
	h=To:Subject:From:Message-Id:Date; b=KLhS9LAEL1HG9e2GcEvhzuCt9JUefJ+Xmat3i73BsY65eWh7RbtVldcCghbpL1qwksQo8EMn44tB+ZAckd1CZadlp1CYddb8pEMiXQ0WKc6gjxVaJtv+Dj+dOiDp/9PDp5cq9d/83LbqvBqbmK55ih6DkuLX5gQMzUurAZbPsu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YK9ofbih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YK9ofbih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F14C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766666633;
	bh=QR8672zQUqkqCgC8Q0ixnLUEK0X3QiYqPTyhvUKpD5A=;
	h=To:Subject:From:Date:From;
	b=YK9ofbihKuRAVb37FTqZ/nkFVIgazGN4Oj/5iFZzGTxz6hlMnvx6z4tNVVqWfv7lb
	 QBM9Hn8ZCI+sKrHldrur16aC6PWGNIYoXyyxgi+LItOWGbXf0UsNUvJutOTj+uWeu0
	 BEHWLZTqbiRGYglxbqvdNPZXWRBd25TSNgWY+Tkgkkr8t8F8/Ul0Py8nw0hvqZV65w
	 nSagmPhAHa+dXOUCa/v/Itha4r0VMDHhZZy+xUu7OMrqShbOPKF87YiybfuMVS1nnx
	 9I1Yqii0ehIC26NZCpMhp3c+5wz4pTdOJ8vMaocQeYnPFMxh6Z84id9s4XYQ0DiORl
	 Ife8Y4EE/JG+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B6FE7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666663358.14635.6866356600965582344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23d92036b8d2815b07b300886aa8064a2543309ad9d9b70ec4936542c65921f
Date: Thu, 25 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766666633
