Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387761362
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 08:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9C1C433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 08:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680424505;
	bh=QZMWXzMVr2OXJ+MAPe30r7q+BuCQQRfr9IZtfP7Dw3w=;
	h=To:Subject:From:Date:From;
	b=aACc3mb3or/c7I9y6hiUBHw3qFkalVHMSlqfjFZb8Hprd3bN6YcM8S0bgi/W5X+Ir
	 vPN2Cxw0XxeGd1ht0C+vUxCaUursE9Hs6fLMO5owIes50vRGX6Mc7cZMEuTpYn6aDC
	 ShWSjzcZLBppYohv9UTtZvhNR+Kz8jC3omd7VZrky3Nj42hyOyODSq5gEYlsAbFuJI
	 tXb8/ak14tEoYSyePgu+bGiTxvU1mGZnd42v1TltRP0ygIVlxl0Mb99FXtMJ2YmZiS
	 PU326VZE6RNPQVVlop0gZsOHU3I5ri1ae3SlMsB/xV6jipnJi+PanVn1YtJMI9R1zJ
	 UU0ETJcADt3qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B9CC7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 08:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168042450576.23276.18221558890317385196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8327ba2e625547de02727493c88b75ab15a943a89029cacb55933f43c118577
Date: Sun, 02 Apr 2023 08:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680424505
