Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D759628EB
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88BBCC433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664632853;
	bh=1jC0034Ri9oc2fOG5YpO0DPHqTVL7QepEBhKVmqVqtg=;
	h=To:Subject:From:Date:From;
	b=SRv8PYJ7xXyOXGaRoPq4GWwSU+Kw8ytPHeD0klPQYXbita2DqXrxpZHnk4IJUt890
	 kNJo6mM1xK2/fOT9B3PI+FOPhDGD1susfe76JpNlv/D3Ns5n+OpF+RBGtPbwoYLmaD
	 mDS1LynS5k4F3ajJk9t/XdCzoGsnqNiJCAXwMBxdf8mUGTxwpPnYx5FnjNEwa8zSpV
	 AV827VTsyBUsUv4h1TMRNcTxGvD5aVkdVgfK3nzTQTh89GAvuWXQKGWgzwzCVLP0ae
	 Ciwg7Z3Z2Xj7rOHd0vXvo1UoJyYfFFmb+zdtpLQlDP11SOl48wRzeJM1pPquTJKWBW
	 kreXAMXg7Y5ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69BC8C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166463285341.16663.12781194020805186167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80164cf2d9a6749630e5911babb7240eec516351567cf1dc289ee00ad34570fe
Date: Sat, 01 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664632853
