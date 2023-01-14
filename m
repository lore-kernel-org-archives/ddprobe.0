Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B6062A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94271C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673658687;
	bh=xOoW3qZ24uTIKGlnzRTvH3rc85IcetfyYe54DC5iovI=;
	h=To:Subject:From:Date:From;
	b=S0REzzN9T6MWH7tInRONepjN25o475dUlu6vOU+pMwiLC2BsCdwECfeW3yQI35lWe
	 KWH5KNluEAXOlJKDZugy2/ZtN1m0ewesWPjhIGSxnoDu5Hx5RmTzwMGuHgTomVkjXg
	 NJ7tTbmwcsjrnjuWmKphWTIKkWQiDKFh/5BdRTx3jmUqm6u9157ZXir2xeIo06OoGf
	 zWSjM3K/qgsGD5Be38zts4i3ihorxwdcBNB24ZGEEJmWp2+9Vw4FQ+SfZlwKvWckZ8
	 IvCsnCS0UjyN4GRHa2JlkPYZ49UrzQPus4FMWfop8K4oTgV9XxpwJ/ATFZpB0dWnqe
	 HeKgJH63zGKFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 725B3C54EBE
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167365868743.17292.16003255171714389293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11c16296690866711578e9fb36862f7f5ee53f15c6499da35b1fe09988ef638
Date: Sat, 14 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673658687
