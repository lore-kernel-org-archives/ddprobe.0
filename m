Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D853AEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A222C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673686887;
	bh=aFpHpmZ/2J4PECdQUd7G+r7G9zGT9a1lZ11foN4d4cE=;
	h=To:Subject:From:Date:From;
	b=q3pa99nlReQtWnWXuxLlgLsyDkKNnxUGkQgHcoDrGqJV1QIfSlQirwz3Mp4OUimz6
	 WxzlEkiMvo+AdpG24rR00xO7bbRpMuih/WCTVDvn7qc82sSF1DLfByeqDB/I4nvJeV
	 hXc0iFnAN80Ns2xGm6+fuMtdf/KvXKJhSl3jwnrtLYetxTrXZ89jeZe0bVXuL9WdLd
	 Nziz6RSYhI5Cy8KiiFqZ/w2LCrkpvHDfcieVGXH7DEo4HPZvyuwU4mCgi90SAGTQLW
	 ijm/il2mdI+ASNIIJIYpqiyUXlXfIyjBkuQQFsBTp0arvs0LZ36+oof08cxFqPmXHc
	 ey+KAoFeyxCrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E8F6C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167368688744.31120.5562599762657139799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da008f31f89ee091806db8e7a4e3abb1431d74cf206159f17bc1834136c7cde
Date: Sat, 14 Jan 2023 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673686887
