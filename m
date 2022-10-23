Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2F92362
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC1CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666494653;
	bh=D0RWVzGIjlZKae4A5g0rIfPD7Ad3SPIZ/iCCyRMqM7A=;
	h=To:Subject:From:Date:From;
	b=TroSOF+TUPiovJCPYbuWDAAW0suAC1Nmpd8KyCptlo0TOSkor7D1D6hUAGDyQKsQ2
	 7WvZSdWgpOeSSdTfIfZalPPs3jn1YeYEyBIye4I9h3YXAd+EkicNnYSiNHWLPdrvOu
	 j1EgP19Mtv76Txwr5XBHaLEDAGBkJL9hPC/18d9unLKzPyKVYbGdIz9kBVy0gxMiNa
	 tvs6lkctCqObIylY0zAWlcIGNiS6MTG2ThZTUlg8mOoZKGWr7XPrEWo4FNv5Z8QWy2
	 peziPDmmykLGnbdZ33RPQl3qMNUGHfzY2v9OqYi0g+Q53WpjoGNSL1JnvFdhIwV8LI
	 AP6NpzcDuJYog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52110C04A95
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166649465332.24106.2550179787348713580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cca5f39e31794a64de23819153aede15cef945f06924ab67dc510cee09b77cd
Date: Sun, 23 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666494653
