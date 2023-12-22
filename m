Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AFC2E844
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FV5ZUNQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CBA8C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703280496;
	bh=CWJbkBfegxSQpUKXQfgVZpXZ2A+L2p/0kPmkD/REXTw=;
	h=To:Subject:From:Date:From;
	b=FV5ZUNQQyIQeaPfV0X475NqwKne4s3jeigJK1CUtt/yFmrcoOlCR+3hPbEbNGErVw
	 Eo4vUnC55oNpqX6wFv+4fG6fYLlNJtXc8DA7AOLweXKCZGmxPFCxbG20sDv4V9qieC
	 Ekh3Z4Wy5ZzoRe3KidSxF7oDRBRy42UotsdLte4R1z0VR5JUcWjOkjiUe5OjuzXetr
	 WagW6o+/s1ES0jZkzHsRkasIWCLHQGDUEagLHOy217cqGDfhTP830J+O4nc01Xi2VP
	 IWIMg/iYrez6a88TMf1wS/5zvBYXS4+Xj02gulTlP3f+yd51wdEruJFZMr1qWvJxBV
	 SXy7QXeYR1otA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7045CC46CD2
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170328049642.19051.4146703203884408618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56abca9407aba3a323eddab9fc93472ad194f72bcd3a79707b26abfc7eac3fba
Date: Fri, 22 Dec 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703280496
