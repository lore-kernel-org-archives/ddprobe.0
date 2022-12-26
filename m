Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B557EA
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EBA9C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672055487;
	bh=ttOugmoVSjdeb5/zhd3cEAVuRiJ44Pge/ajthkqsUIU=;
	h=To:Subject:From:Date:From;
	b=T55L+ckXYFd1O/v9E/jxaXsCQ67wrxc1zLnd//cstyGXdyb9+NXsNjHrtPjHv+z/b
	 RQ/WErq47xjybgPqXpr/zFHRA28O3cpcyEwKwlinwlU/8K5wzHd5hN1gAkFeXu9lHV
	 /64+FWAVHyzWgi5rP6ErErclrLVDGAuAHwBlb0N+iqGyXff1aVrqEVbIC9Rb4ghcPZ
	 HfQ0qT6VldveLMkaMf2mjETRvcvM8yaFuy0v82P//WvkQH2y0qhJ0uXrCQpLqYPyxk
	 dmfauijpbcBqvt2yy8vlOptRDloeqNJavThlj9mDM/TVVo7/gxsMEkWeKC4C4nBL3O
	 1JZvqv2nFSW+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6232BC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167205548739.24837.5075236179812468751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab03b3855d2fc5abc490294048da3f6969431c189becb7fb6e05c1aae389d98
Date: Mon, 26 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672055487
