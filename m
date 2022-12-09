Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E147E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92ABEC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670549487;
	bh=3EdI4byqZUEbkju6HCabcusglXxpyPPYJRO1hQrU1zs=;
	h=To:Subject:From:Date:From;
	b=oKGQx49egFtduUuKprM3Y2Zlle1dsnI/bHaWvk23ehuI52qUrtRbt+huEwOUNgA9I
	 XWDX4Nx63OURXax1ZbmvrHEsDDrfzC23IaGUW11OqnEZD4GDT9/toKjCeqR2jS0UME
	 mr4ii1w8Mq6/sNpNhMZHdof8KlHaI+A+FAXUWAmVWbuVe4wu72nqX1CWkcTkJSyfGK
	 Y9vsPxSMkXqpKOCSsf+WVejqD2fl8rBxyzD3RDmZp2QmVxmqZ2OAsjkr7KLpxcKGSF
	 CSOrT88XfcR3gkpq/EZHPlGFgLcCYFwV+azMg74ZJ5Ioqlv8yAgz/15zf6QM2IqVGU
	 mhLEexyVYcEsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72658C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167054948745.8242.13045385063144330267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd2c2048106610f60e055b2f184ceaea2e2e0fbcb8ba0b95ceff8865c2c7347
Date: Fri, 09 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670549487
