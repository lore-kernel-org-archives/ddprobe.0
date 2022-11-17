Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77C217E0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC31C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668672654;
	bh=UoVkvgsy2+8m+lN79Y6fjhyAhfGr4ZSwXeQqY8ieMTo=;
	h=To:Subject:From:Date:From;
	b=JK2ERkyi35+OIaIqRkGbL67mWP5TnCkBFSgnrgyV7WsTRJrnBnReXTBuN6q9ntGCw
	 DgORUPs9ZAxTDMbTP8f67GMjGuNvvmFK/AIVyhPqjkGsrzaDHSKlw8hoH902FIsVly
	 lSyOA3tLBN9y/6ck/g8S0yGiFC2jbH9XilAlsVcMqzFIbhmwUovmqHD9FyArcq/XcC
	 dWGRTT5MZMscRTf4NIGqwMpIi5i35XODQGjFVLtA4oceeG71YX636xcOwZn3zoJ78o
	 gfW8kufM3RSaCs7HXcCywOk3BsngDfkW1yK/Ha17bIApq2BYbpncmTEBfiRrYH1cch
	 o2TEbIIisFn2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520B9C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166867265432.15858.1882601905808985537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69c1663136a859672faf2e4cd0d65fd7ba89bc5b3d86a111a02a249211c5382
Date: Thu, 17 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668672654
