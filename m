Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DCB1C07
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 14:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F02C3C433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 14:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680962466;
	bh=lMGAErFcvOJkyzZjRa46r7cRcZReo09laeH2mWaySic=;
	h=To:Subject:From:Date:From;
	b=iHncp3s3WtWvS43UlKGtG9HKg+r1YIsk0IpyCZTamJmKK4YxMqIWoZZulwOOMsKo0
	 xRuE4o3Tocndpiz7H49TEGYEPkSBJ1nfC+d3jeaxNEhILOCEqSV79M+D+NLmJ18olm
	 LbdWnALejv8aEI1iO0nqkA0+nr42B0NfS7P7/iKCpAMbUiTHOMleHpxsfqkYGIl6Eu
	 KcI1DYRZ8UXV1Rlm0j7YYIoCOVFsQD8ruPJ8oezoZDag+h4OsGscGeYgz8RQVt67/x
	 p9XVK4LYqjatc1Tu8pofXDcCyvJxqeuJPNBhWxhe5LbN4icJGgw8pRdXN3YfqJmVJI
	 nJbO6VQ7qUrYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEB6C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 14:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168096246577.6098.614996910123367371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c10b9aacdf95ef711159d34aac17bef8a5226a64798822dcecaead9cd8e6ab
Date: Sat, 08 Apr 2023 14:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680962465
