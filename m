Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67FD1C01
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F1AEC433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662849053;
	bh=ku46z4umawpWnjZY2erVxpQSBU0CHlnJINFe3gikK1U=;
	h=To:Subject:From:Date:From;
	b=FMyFvMolasA1RzTpVm1xFfVgfjUzEzFD7GjGh2zdWB3ImU9ZPnxrECq7CI//D5Q7p
	 /gtw9MElXAWvnBvcznEICL9gx3B5EtzZ4k7bgZCRq85mZe4ljjyRfnHePpTw4br9J9
	 XSRkPdCKR3B+6XUDb4eMA6EIjKpdxKL8bRYQilRsJwlKrz/fW65ND6WexVsYOqtE9K
	 djMfyu8g1irZ2+ugQKOIr8zggrHiML44+hmegDxI1VjxxSPz4QUFza/rI9IPJSkq0r
	 DW+M7tohQuyhANUgObZjr2JgfIYbD9FQ1otpaZKwJU+cDjIdd0BVM9jQdeattJ2z1H
	 6/AZjrk00veGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A2EECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166284905333.12336.641698600261175711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7714f1affbe878d4e462d5a783b587b51e3a669371e9dbc3b6df18eb71a88a20
Date: Sat, 10 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662849053
