Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398572105
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 12:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E26E2C433D2
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 12:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683721265;
	bh=JTCfrRP8+HqWjXvPRNa10t4jY/+h7jS2vn5HFaK9qto=;
	h=To:Subject:From:Date:From;
	b=aoAcJeufXZwiE7DF3oT7BgPNq9ukK2jPbXoIBXVp9MMjuRM0vJq8ILa2c4/eQ+oIZ
	 SE9rJ9HwSeG+sbKQLK/d6eW7XffaxuiT+Nrx1qJLLV3jhfIh6tJuAU07Jsn/pOA69x
	 gTaoK5MIHh6VPHIZNasHI5RQ8WKIylOLO9M0TA6Vg8u2Fa4f/wI9z5BpO7XkJoWZdE
	 YNitmoviprk3iGgaScz88aKidhtH+WuKbOO+ZI9VyymGsSo5+YCKg+EOQ9R0Ek66wx
	 cFjx2ZoNQuu+1CQ7dOSnki3nkG9vPrQjjx11Jlgi60gaqjZErvxAHWVJsiRJRdjzms
	 lWIAWJPYkKxMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA95FC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 12:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168372126575.16691.17878078826389719092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71dcca9fc64e1c5ed8e72876a3dc056790c1651bdd5f7dcce2a21ebf00f5bf4
Date: Wed, 10 May 2023 12:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683721265
