Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B10AFBEC
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imq/yeXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A1BC433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702507096;
	bh=j0Md7s2CaIJv9PulFUtOJToICxNfTYAG6W84OEd1AmI=;
	h=To:Subject:From:Date:From;
	b=imq/yeXzn/l0wIbTjURuKsMOrkMU7FR3CfsE9nXEnzHmy+468c9XfFysgfoDiYyWN
	 aKxKg7GZzxRRzWQ01ekOiGXqaHga3liTFMOP2IAergs/dI2MK+sAQXIfPXDSlmTGmM
	 mAplDFI7pOfuWM28vt/bJrfq6Ya/m3voCE1msOTRldzyaI1UDfmuHyRx6t/i0qAMR9
	 /PlLXPLB58+Ui2hskENt2zP+tZMqOxEUIo5EbB8GOA9xe5fOWHRyQ5oAUxFY9ZvbzT
	 574B3l40mVEAJtwXmERwi4UKlGmJX4409BW1pqD6/mCmh2N/CyxAfXHs4lrEYZHmJb
	 k/v5JsJ4ltbLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B262C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170250709636.26365.5629574509340757914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7c71ebfbc5911f151b643d944d7a05c69a23e807c7c0fc6f8947796fee9888
Date: Wed, 13 Dec 2023 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702507096
