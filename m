Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC34321D
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 14:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA372C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 14:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678200605;
	bh=iuiqF4CoOAKKsrBcdxJbiK54oyoLAk/mLnNhJT09v+M=;
	h=To:Subject:From:Date:From;
	b=a6YfD+2hwoEZTtYKO9E1dQx4lqQWvwPCJcsx418sjJJnvTXLJAbk9qlIExT296vCu
	 VVzit47Pw7IqZog+OaLXZN7Cldb/BbjuX6EP3Pc6CgdxsbmRcyHvIBB2s8zFNMJikc
	 ddprW2GBLqcnLFHDdMSCN4My2qhkNQ4D/Z0CnPPk/5e1DfPWMNDqfE9i5LZ/a8stD5
	 kYGOz5LErXZhiHSTkZjkdLClgeSiUUF7Y/TLsS4GkIyXVitx5We5eTCtYSKfcbMZaR
	 YiT+q51aXKL/4USeWWwb7AA9fEye3M/dxCrAHhGr2NBnZmg82lBNCR64au2QIvU49Y
	 vcBnklX9phlhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3B5C678D4
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 14:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167820060576.2313.16516374684967378700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc4f6dd391233a5f5a4b6ac833ccf37854f81382cf0638518f12e71d03cfaee
Date: Tue, 07 Mar 2023 14:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678200605
