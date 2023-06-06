Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6554119915
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 16:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F06C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 16:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686070325;
	bh=uZUDkkou1PYoHCToKygoViCGkCgRSAaRjYgnHJ6Fg70=;
	h=To:Subject:From:Date:From;
	b=ZS91UHHCaDvcfN9iiHs8g1Lz+leCrrll2Wksv1ZIzZVItOlgHG9+psSqRYF9iQN2K
	 C1M1tPUcpQubgmNzrfVesgifTj5ZFMV8/8TXzHjbT08aLZdiTgSv02KU1mHz8dHdTe
	 IYF1PpAvH0jX5ha8PE1mM692+D/C9tVhcJf/dQfqxUZA+v39x0Fb5+47/0VRREVUP/
	 UJFlRS8CRL3Uv+kGa057MFR8r2fJCkEUK4Pi1oXJBwDj0/YYUMkLxAliLF3PgO4wPl
	 pt2bauSUaQgj3IaYG2WnVthmlwZ6oEXhqCXMmTiWAJadn4yrqF9B5yVwUQrW0tYrhc
	 EEZ21ySEvRVRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79FAC77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 16:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168607032574.3153.5422154879278653730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4a0a6056c926d81ca5c818a8bdf9a7dc2f06fbfd4a58bca9215a4f19cc26db
Date: Tue, 06 Jun 2023 16:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686070325
