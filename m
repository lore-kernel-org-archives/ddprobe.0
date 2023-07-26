Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2001DA20
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 14:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FCEC433C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 14:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690383128;
	bh=V+GuCUe7Kk+n6cxSxCpa3u0RxdjAT7csrMIh7kHntus=;
	h=To:Subject:From:Date:From;
	b=SPkol34NooReG2OYV6BgKCGgJnDix7XicSgtCFYmlni7dVSb4c5S/3WKrTYMdFRFG
	 EKxUra2Z5kChchEP6OfBvpolRJ0/7XT8ZmJvf8ilDAPahOsHGAuKuxoWWNMy50W4LE
	 AsNLI6F3S4aOpIYDa3hTXONm4oLdyRIQY6nIOQSfOuX9RbNhKvQ9fqiCxTgil5xST1
	 xAvJCGT5O57jqEYUEfHmwG+uFm52DoJo/fLHBZOV0pMhSCKaXpHDpfJpm/qx3UmXR5
	 jZxNtgJw1cHVh1Ja2+ZMvTD4hhhya0JAQVBmPWAUSryqsWEzswBAS/kGYuDy6CLw+C
	 wcYxpmuZM8J0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD8EC001DC
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 14:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169038312874.19881.2659154579456670398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6e983734f7bd8828cfb6dd07805cfbf832e8bc6a248a4c32d57ac093e07346
Date: Wed, 26 Jul 2023 14:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690383128
