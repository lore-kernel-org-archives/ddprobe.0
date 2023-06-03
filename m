Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733401FD5
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 06:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF28C433D2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 06:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685773685;
	bh=E65C4FqKMTSrq+DTgUvwZjZMaUDH58k6R+FESZQvuew=;
	h=To:Subject:From:Date:From;
	b=YkMOxxv/ph1XFrBoEoRcCFkWamly0Rfjj/3hhypdUJgEAaJ5HjNyUzYQnRLaNN38g
	 jZvKmwwjN7JpXVKqW/iUEAP5sMphHeicZjVUkjyECqA0xXF5bA/w/5+lWmkcFK0awV
	 OEjoMLqTTrJdnxcElqTcH/U8ATgKCKZ/R8j/z39Fob/krhOW/kF4wUnaVp7nCCw+7W
	 KX1vS/1Rd96QT9Gubf8HJ5cdFJDcrWuzSq2VuJzxsYzY6Yaup4qpNGTuAO6BW+FFMq
	 TA4wYPMzZqbBMgDq5bN/ie8F0jI1RWYk8qozeE+ECj5EzToaJDYaDoZncin2qtb7YN
	 tMDNTwZlA9xDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB469C77B73
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 06:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168577368574.28609.15958491253544839424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614392a34589b18142d20c632fd2c2e0d756923cd495893212cd3380541b322f
Date: Sat, 03 Jun 2023 06:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685773685
