Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209AE33D8
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 21:53:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA255C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 21:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674510785;
	bh=Vaqh8rACfWFqCGtl46KUmVVRyDXbDqgprp7411+0pxE=;
	h=To:Subject:From:Date:From;
	b=sdVLf5AK1pDBkXQdKzJ47E1AA1ml51fr2Ew6mCgULxQW8f4ZL0HbgAhP7IlyzJw5N
	 6jlltp8287cD8mk/KC1dhVW6hXbPvBwpZ7TrFbl1jaKVn76Ck7+pEV1q9TqiAs8nRK
	 k9jTdb7h76nU1a9dRwjHfc3y0N6ctWudgyWiPV/nmmPH477+RU1+cpL4eoCBbDRkhO
	 Cs0+V419rrcK3DEe+0YTsir9d17H0HG/jaQylWVd5NnCt6dOS3M53YTskB/af6hQbS
	 amVmTZP4T45mYa+pdbHk+YGdsyCjBSCXgTND46YSXciywAyoFkLzCiAWXhAaPYzYvj
	 vSjl0wG6cU4Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2648C05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 21:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167451078572.30965.14652651203614375022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019e6222125f4f63fcf49435b4d702820bec46c2132c7a6095b7964d722950c4
Date: Mon, 23 Jan 2023 21:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674510785
