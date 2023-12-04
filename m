Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B81171D9
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKYR7A0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FE65C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701710296;
	bh=rY2y2cJ8MBsVZVpiRD5urxh6oMet7gB0ETXa4+bfGH0=;
	h=To:Subject:From:Date:From;
	b=pKYR7A0vjGmd76Axb8FCRS/2g02TlLS0uSO6c/trScEVBE2FM31j8EoZn79Q3OfQ5
	 iYgjIcbJWcyGQTxUsKjZONR4sTEunddDzirx/F9ki0stdd4cUDA+67TFm5uEKbqgkH
	 BZTkr055SLtljjoQMXfb3SGjrugB9onyGBch5aI6fKl7N4gmk9tnX5Jf4vq15NFSbi
	 sraAvVqmlVy3AsyuanhfoQ0tc/5qTsFBAk9lsbThZMC8QSBiYyqYtmXgcWgDQlxOP3
	 YCg6Zlu+bXcPejr5iRUEnXMepoZdRqwfDc8F5d483a1GRAct4xQIz5urVsw0/5aRYi
	 bzpGL+Hwv6rtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71B7FC4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170171029645.3812.15473325832055721423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b721575a7a93dd21f09f7c5e24a909b62f43ec2e49b2b72c7c973bb853c070
Date: Mon, 04 Dec 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701710296
