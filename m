Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCADA57
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 14:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E987EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 14:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682260265;
	bh=9l4/ETSIkTvC2k/lDpn107Mw5J350HBKttlR1HEgUXc=;
	h=To:Subject:From:Date:From;
	b=bYLrek8wZgvXdtfPL1qK8/IHXg2UjCfb77pH6mYPwPbSBHn6AyGihyZ7REe3iIpCc
	 dk8biN3yQnjjd9ZEm2PV6UaSZOg0hcWPEWWX8jXFWuvmW44MaMsDQ+vaHfKKoUpW6r
	 N0PTAIGRUWsqtnz6lgu9pkeHilzz7PXGDcQ74CGGlRzpHQ6gls8Z8JoSK3/QJf4y51
	 rM3YkUnzRQE2TVn33S1ijrBCmHKZSzxytiVP4KJplt94rIuVpXlA64hwAT9K0eCXcU
	 aIKDTPZmffXq5tPseeP938mWwhRZeEVAfAYfdphL6KJDT5sRynyxJUK+luD9awoLou
	 MXtLJY6RUH/+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC89FC77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 14:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168226026583.21048.11821822656691387920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1703328ea54c2edd52fb168b961d76b19b572d19242ac024d3b055dca3b7126d
Date: Sun, 23 Apr 2023 14:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682260265
