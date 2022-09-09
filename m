Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF724C62
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE8EC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662739853;
	bh=E1GOEqri2UdyOZpHJnAmXV35U0qdwe21JABI5Q9x73I=;
	h=To:Subject:From:Date:From;
	b=sDsLpC5tuUS006+LYRvrU04+NwIPt9cYg+6PH2FfZ8dTZjqEPtkkve8AzqRCe84Iw
	 K9hp4vmWua69jALUuDiqMh2aAcBUe0YyQ1aa4ZgqEoAwDuaSUogV0wo++KUizvKih3
	 3I3aZHhg1UQKXEHx3u1w8WeQQSXtZ0sI1UQ/mwx94m2jRLZvNkMNfDb9x14+Nxh8ZM
	 tdATUbbE1+zM3kXG0WFeqZHIvQOPety2fLgHmhjCm9M/kmUnTRrErEeYdu/0JGchrH
	 Qr2x1jr7eoauVd1Y4C0+q70g9y//HXrwa690ZCd0vbJfJTIU2jqulfzr2qpHqwvmWE
	 GkvboGf5Kt/pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5087EECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166273985332.24463.10772977529645333452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c7b0be9f167f2e5e4fe4044b4d4f565629831d1c98e7860d11af7ac010c203
Date: Fri, 09 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662739853
