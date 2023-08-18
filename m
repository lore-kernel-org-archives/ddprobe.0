Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF67468C
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 20:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF49CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 20:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692390848;
	bh=WcMq4SI9UCLUIp8RRBqwbnMdi9doFZvwQX/HLUt2WGw=;
	h=To:Subject:From:Date:From;
	b=Y4x2P+JS0e5FhtxWIhZw650+aFd6OhOEfex4vwCMt7UP9OYHQwrHSPakYK3xRoIvu
	 2xY4A8ZHDrovS9S4CcN19ZJo4/ft+e561C/HnNjPpPUqMrTa2Xc62KXk2fcjQvwbkl
	 T21BMTjIrZu1dvTZxHd/eEOs0aRpfAOIa4U1WroMiaLNbSBHY+NrZUDPtjd0Z3Kol4
	 Byj74fGHkWE7tnpokg5Kb9UitQ9hFbqbnAzuO9VDdXs8LJlAtoFed3wQ03lGqATK08
	 CSFj+Lf9oN9E0/i30Gfq72AmPdob3PhYkeVJx0ZjdVbgHNfyzf4WDElLou49RIRVAA
	 rJ5WSeuBEldRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84A6EE4997
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 20:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169239084873.9132.1037604817515171010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d1cd26faea1a369379a72279f02dc06f6c376729903f75ee1aee9a38f69f64
Date: Fri, 18 Aug 2023 20:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692390848
