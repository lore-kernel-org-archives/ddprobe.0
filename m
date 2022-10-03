Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57628F78
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73BF0C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664802653;
	bh=647vI8M7pJzja3IMSPTVw6GG4JN2iLtx4qAnqlnRqeo=;
	h=To:Subject:From:Date:From;
	b=H73sO2W5tmTLVEydo8Qt0Y5mUw5/sEWAKzuQVq78XXRm286VVhKkJTjcFdFl/MZ3q
	 0+SUmt5LKa/QCFrwdvPuEHLnb2wlLqAT+5vqSxrbMoaHi97XKCwaZGr32EUoSwPhuO
	 /Jir9kagkEKSIQudqWa/OezyF5k0i1khKd8WMOAEdy8CKTob4SKsht/S9Clb20V4Y2
	 xz43C0VkHFlt/R5iJBn+ZX/eSgumnZd2lWE6V/41qAd7Zoy842icb0CM+OJ/7YVNAO
	 +tZZdL7Lmc1ST4B0RkZgSmX3ycWXCKY2f19+DdXs1v64Mr+VTvYN2KlKlRtg5EfSlP
	 IIOFNClgTZ7Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574D5C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166480265333.9831.13052875977502070292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d93002120a510fe672b595c56966110223ce758a5738e9c75bfbf9de29caa95
Date: Mon, 03 Oct 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664802653
