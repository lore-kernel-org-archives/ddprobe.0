Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D022F2A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81DC6C433F0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673626887;
	bh=0OfNAMdr84OtDKmmw0bPjG8fRvbdBfNAc4IRt2ZuYVo=;
	h=To:Subject:From:Date:From;
	b=lArkDvgRluD/ynPAMikp/WreG2Bl6Ih3yKpxHPrd5kqpSQcSPXthhpdmq9Geopl77
	 ixcO9l7OKGZeEYmd/818xZfo7sgpW9KhDzKnEFqL3mShz8cS91MuR4GE1H18WUnVtx
	 8UFvZ0TF6pAXu1z8G6SrOoR9pXd82h0TYPP/Ke28+yc9avtL+jpj/pRNkXkjhciK54
	 wEaMD8FtxurzeNU2+JfDhRKZkzt8YLpl2lDXNUQxxoHZ1uSKSLTJNqsKxCm1+o1GHL
	 RSYZ+Hgkj/dDnFPfh6gYtrbcsf/FaK19Mh/4yeiTv5IcXvaTh/qcIje2P/tghRSMzp
	 7xxPxtT+tMthg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68DF2C67871
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167362688741.32230.15000875025495381186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71361858ab9be265d2f53d0af29392e821251f335c380bbfdd547e60fac29bb
Date: Fri, 13 Jan 2023 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673626887
