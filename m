Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F4F7F2
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLp3cTa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9368BC433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703472496;
	bh=a2FcmbkbVW0XBXspKdIubn0Z6mzomFUtcPTtcfqqL5k=;
	h=To:Subject:From:Date:From;
	b=eLp3cTa3oCoNCN4auLtkNYLbXQUlWBW8wh1fzo8b5XIJptEPPZiesOlpW/nd7kufH
	 jUMXxWBTDnpx8XLhM2EolO5h1iaSqNl/n3vtXeuEb+9kShelitdr/u0yKpqfS6V0Du
	 x4Zi+tNFNGKXwPvEU2QFQbWIE/Eyoq07hYIM0R+NkD+Z8UecPyzOMVCRu0w9wkSnVc
	 8Wo+Bu91jqrxIbzr/08quwj7D8Ec2kpSDbrbbQ9oSoBMBrb9cmIyuMXk77oazXUi8H
	 iK1Cd3sfsWuSMjLOQHpuoVOllBoKrgk60EnYsQrQ2VzFXskpJFrZ4Evgyc9VpAwlX8
	 XjB31cjLE3/wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7250CC46CD3
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170347249640.3367.18401493944473472432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26577e35fbd0fef3aca03350eac577d6876499418d1c33873cd1c74e8e387dae
Date: Mon, 25 Dec 2023 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703472496
