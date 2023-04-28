Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F84320C
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 21:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E58A7C433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 21:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682715905;
	bh=bmGcULUkCBL1HYL/pdF9cQJPL3OUu+a51knJ4DvWuLg=;
	h=To:Subject:From:Date:From;
	b=bxE2kpyh0jNf2XFDgJK+aVM7kt9L26jLwOPgEh6doa4nUoxaWyUlL1F6Alh1rJZam
	 lj/WXvkGmHdXnjyD+4I5xWCzS09JgnGiFEQYNoUCCCHOmgmp8yJPAlCgwj0DjxeMnf
	 Llgyqil7gXEeF17NgXQFA/doezPzpbGcO2H73hEzd3a0N6HdAv8p8pM2xjpZzEAEni
	 GNNz5+pmisk2Dxl+bJYOiO39kNtLhLBYKLI/LCrVbExStVmGV+nkeju9KSVApEdie4
	 mzxcfF7qVpmj4kpLQryf+O02FbQyCyhHhUR3TmDR4PBCScntXL9+iQGxA1eHWdGaK/
	 ENr836q0XdW2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C492AC77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 21:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168271590578.17645.12531827293549739045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c07db6a4d594d6f576ca94d78ab8a3bd2a0a45508778b0109b5e239dd8e6d4
Date: Fri, 28 Apr 2023 21:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682715905
