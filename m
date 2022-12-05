Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA9515C8B
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75FAFC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670271654;
	bh=v2qD5hsCalf0v/TIovf9SNBr73fnWeFyibPKfYBM8TI=;
	h=To:Subject:From:Date:From;
	b=e/RvpsH6m9MLlggSFIlJce36Bflw1FfHQTOBCIDTPimDfc3mCOi32LIMvWim6orF9
	 0f8VoLwgGhhtI3NkiCEdkEP3RnPZievVJ3rHP6Z9wK+12HtB3cDOeOMmC2uRThAbaG
	 4Yx6HthIDv0e3+H/FwGvD4EzrT04J8X48m3zxG5MHtIXlPysx4TtUr5W/ofMbKNZcj
	 qW5yaPupBZiXDEr5FqLhRjlqGCRlMwjaE1Rj0ysfKT0pOACT17OBoqJxPcSTMRWmQM
	 L4mf39Etm1IouCB9kxsPC/r5TExvk6JnbbNkppOd+0PYO5mvQXgkL5Wg4aptU3giPU
	 HLd/hELZIRIUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C905C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167027165436.19628.11104647085709575604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db60b21c661166220602d78c05219e33f3fc22dc6ddc17fe1e9e716857bded2d
Date: Mon, 05 Dec 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670271654
