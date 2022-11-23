Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D252A2912
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71478C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669243854;
	bh=XaBiMksN3r4k4lMONhFbaLKl8FJ2pjYftIYiEjrB9UQ=;
	h=To:Subject:From:Date:From;
	b=NCuZSniG4/Q6Hyo9iaPUL2XngHvV65DDA3qfpxoER7GCVnNgXSZK+YJ3L7zvFBjX1
	 QCTkF7jsQNKPuD8RCBnQgWYz3qLTptne22Or5wjkJLX5ANsQQljvquXBGlKtSHRf48
	 hyDk9MGix1kW55la7vs79UU05GPhKGXqzaY12ELmHdOmwZR9UuRqB20OvxiLz1x4wI
	 WZwJFBrNrOUF1nfVUtFuueebwTxthS/GFee3j2XH4YCN4uHKuG9zIVolGn14lYRS57
	 Rlp/lWSlDrV9NTjSKBWxWI96eypgM6R7SMy0HguYGAJMkSNdZ29HTezetZWC8A0xQ3
	 Qe4WE6uuIiiHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5675EC433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166924385434.20944.1734836232060962628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ead56852d9a779d45f1a9dc68c7f2c2ac3f46b1220927061ed0248727e98a0d
Date: Wed, 23 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669243854
