Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7C87C
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 22:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2DEAC433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 22:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675551365;
	bh=Z0CsuoYJUti786EFWMG+WvCHXRONN7zsoCGU88uROwM=;
	h=To:Subject:From:Date:From;
	b=MfIZJD3CPWaGuEtzD7RP9JHPzl4gLl95PdVByUaLxmeGFK9Sea1qDrzYolyIjk0EH
	 yE4gitSpvJ6KMIatmzprF11LHvAXcgPvylL+qeVEklsoMp9fsLApE9ic9wBh6Bq4Lu
	 xSWj76jOFC2NZW6qpHmZIErFz92SHy/Ry3/ktNhXucinqj2oX3yPGOBHDtufNRT6Dl
	 0JXOqunslxzbdAzMqksJkHw3v33bnJRIdMCZ2HpG0aCMx6cVOuGbjAY44gcdmkF2ce
	 XulfxK0ixVjQoMVafVxQnq4S3fAq+TmXxDn0lYupoBSnqeJGDu+x92MftmrXV/F6eS
	 pn+wyR6UjTM1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D37C61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 22:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167555136579.5709.1772034077622683745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5bcf327861b25d3a36f3687ac14c9c33713857a70ffa514c9bba1b4fb2159ae
Date: Sat, 04 Feb 2023 22:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675551365
