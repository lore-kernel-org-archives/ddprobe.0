Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C04C15AE2
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 23:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7185C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 23:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689376268;
	bh=GFKUFN2j+gFRFAXZu8sXBqEVLzBsa/dqLhUr0t9+6cA=;
	h=To:Subject:From:Date:From;
	b=pkxrDbIkoFlln0WxaiDMPyb3PVwatqHZGij1q8TiBMZvFvOJIiNHLtjWU+avj2Y/t
	 LneSmQqu57TlHOjZzh85Y7BvhRY3GkwOrFS2Lp55wRADpVij8A5MRnUacBqHI0U/ac
	 5yT77SientXrX9Ka2zhFILPYUpoAyZZofEb6hBmL3A0QlFPH91vhNj0a1dhqA0bw8o
	 4DTYlezYCTaRL01OdTzCkysz5swieIPl0B76gWK+pHxE9xJXfe6vnJ0L3UGUBKMr0/
	 qrq52YfK18rnZZ4UmGAS3u/5YJpz0x9gglF2uF0msOcaTMLBQ6K5fBREElJMHUTG7E
	 5t0vGIkYruLnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1BFEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 23:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168937626869.32170.15594515159356873701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0fb87469ed9bef6ab02e4bf915a1392b755071b4ea0c87fafc7f1eb1abf792e
Date: Fri, 14 Jul 2023 23:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689376268
