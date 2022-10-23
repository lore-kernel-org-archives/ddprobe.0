Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC36A362
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72FC0C433D7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666493453;
	bh=z2YoDGT/Hs7REhvFy8qUSJis2JepFnQuJoH9L9O18Lg=;
	h=To:Subject:From:Date:From;
	b=AU9KUz62vci9fNCBjRrmwDWrQVBQM8ahaArYnn5kTFR/0T7ayrcPxEnZARzpxuKhK
	 NnacD6NjitfT3+6wuz30LVdOofyF8QnYdVFv1L/npzmhr/wbMUiATPVdX5h5przdb3
	 IOCTnYSqfYIpSUBoflr5FQ+5wgkCWqua1RbZy6pwcB5HTHAD5CDzDEQC2s33p5w3/G
	 /KHGYN6FGqHdJNFvCB9+192AHv1ePJaysCorwvApreUItPJJP2lu/+ks63hy1yW0I4
	 meRcjJeD7Tjbup/qSyigEjY8SfjCUNEgnVVe/zE3fIyS2DxU7Zahiy7K7bYm3C8AXW
	 1VS4BtAl6hnPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574DCC433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166649345332.22376.5632099763865747197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc28979cc25d542b4f69f6c1d0fdefc23350e2ca09bd9708397a7cf361f89cf
Date: Sun, 23 Oct 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666493453
