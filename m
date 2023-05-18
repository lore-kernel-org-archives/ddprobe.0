Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD1917F1
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 06:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAFFC433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 06:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684389965;
	bh=awf4fL81y2VYdIPMG7rR4VTcPcMF2eKIfFRaBY/9Qcc=;
	h=To:Subject:From:Date:From;
	b=EfrlKzxQftxVJxbyWgB5IF4Bbupr17ptG15auSHE/yIifO9/CgaVPa1slMJ8e7uoc
	 jlqyYzY8CA6ZnYI/e4S/L7YIeQYkUYoCmxbpNPWqt2We9Z7dA147yDrbvQ4ywpn3Ge
	 cavHarCei4Nf5vf9sFRTJ41Zhf+wNOUR2yT7wQrKBcsYEFuACopQHlh6KmF5r0NhU9
	 6CyiGXdBhU/379RUbizuHc24PTzLLbekFI26VxplsAM/Iyle+oKO+ybcZBEPh9xmI8
	 2WFAd6paXmPZCFCMrRsTGp/bHxc6Wei6Jvf3i/Bd/K24xaabNkV4YtuI5oqP/niirN
	 MO/xrnwwsx7FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6745C77B7A
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 06:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168438996579.18989.6826399173277817521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a7266d9ed4ed339e6d2b1b5025c7ec6068969319652c5a9fdbe282812133252
Date: Thu, 18 May 2023 06:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684389965
