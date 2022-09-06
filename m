Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D7B5381
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C97DC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662472853;
	bh=zRr+Y5/yN+8olhj2xhkyEEwus9hAglbVojguQ3kJDSU=;
	h=To:Subject:From:Date:From;
	b=jRQv2FvEWpjxf7Euhi729u0nGhOa/p7AY4X9pNQXRhVowMlLmZY6DQDt22GyprRwo
	 akAcYktRX4x0PaBJncE5rA+uhlVbd2vk7OFsDJ4T9nxToamRWX0im3b6eRwZVHzTza
	 IxDXvZOvv++A3QjkgWJLna7qO2LYy13Qqn1bIWF3yw1OyHKbDsD5LHZrARgp4r3lHa
	 YeGWmvWbmOiARFZ0JzHtiCPFaYRQofoUeL6fZnAU3ujrran80XMbDgM9qbnCv64m6Z
	 Jcdobp+mQ/REjGpDeCMZMGRY4rCfc+QX+0DSpWJM5k43d/ddupqZM0kyBsV0C/DJdu
	 s0IYp36EMf2DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A87ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166247285332.32268.5908098816909878911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a221bf62c56cbf4d0aeb697371c228d1f5ed23948013c0e480e1f183f5c096a
Date: Tue, 06 Sep 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662472853
