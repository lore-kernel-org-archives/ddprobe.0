Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9F37B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB77C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664882453;
	bh=fanIrlxbFyZ6dV8tDjvL06njmHbhd4l7NqDF5V9rjcY=;
	h=To:Subject:From:Date:From;
	b=fVrI1mU+2jySMDRhwABCjVBfWK9u3ZZ9pVepakqBup2rxTSr6bWXf/BTg/zYgJJ0h
	 3HSWAnvFa4PnCPmJsv6cfYeLEDrFmy8+a2Qoi76PPTGtuKScEXD3pW53BwG2TvGwAI
	 qu6rM53UvXJ3rfwgo6j5ABQNSfylV8s2t22a8600M1MBGwqMaC7S0ZYQ2fEHR2GcMP
	 rJWDGqmE9MWD3r33/3lZnNLyFZ4e3nbzjKn/sTAr41SwyC6ztqZkswdjtwjGgt+X+H
	 l6N9fmF86bywpNusL77zhvt+IMqrAJ6Szi5bRSjt22rEEGAom/biIVgkSj+CsK710o
	 NLnphOEbns6NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57BDAC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166488245335.19880.17596066748624899737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46e4f4c42a2b22416c190b34390b6fa9c4548bc1d5138f0726b01edca426d46
Date: Tue, 04 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664882453
