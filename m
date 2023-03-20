Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378557B
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 22:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E408AC4339B
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 22:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679351825;
	bh=Sg2p5rtZyyHAYKMX+ayKcMjd0jHdKZxDw7RzwHheKA8=;
	h=To:Subject:From:Date:From;
	b=LClaJU8gT+Vf2fwoGaS1QtfsJreTQRrP8e18jZKJ/hYpPj0StpomZMje74ZfVbyve
	 l+jIoOkjIIJKbkzkk7lQOzhMKY6B2jP7dHq4QYz45Q8WF92H4UHtEtQ9NOSQIqbGG3
	 AJ2XT90/+hraBQatVFJpPWDgk4XX5qNMmPcH5EKd/VjaE3JS9Y0qCnZz63KPkAKmA/
	 KHZ70Gt6caGp7+a9YVO/A1I8T3jbgY3ygM0PFFDNHLEJDbd5Qd3w5rGNlGleDttd6q
	 t7UUxaMt8/Vak6pGAe8Q+XfKSJoZ+SYahdmzVnlgMASggc3TIF3AnTql/ZM/AI8b55
	 9n129gnWdUkvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6117C6FD1C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 22:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167935182580.1002.8003890037791911480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76aafe66cc13ea68bbb026d3f51244c8c779a0acda06a48a8cdca7768908adac
Date: Mon, 20 Mar 2023 22:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679351825
