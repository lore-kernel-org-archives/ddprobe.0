Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9037D2572
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 11:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF1EC433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 11:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693569248;
	bh=n1dxnPJ+5FLC68oNnc5+BUkz1JbKA2XkSDwIA8NHZZs=;
	h=To:Subject:From:Date:From;
	b=FUpXvx5sGuOjbZT74S5ofUbRVO2ueDD1OcGoHiUcPdYibYno9HDXjreRo17Elz4In
	 YogTZuXpfSLwL8qSP/tOmgB5vMQfAhrZmpuEab1PE06qARaQWGlnlwlgnF/CrCVQKI
	 tjl8YUaSCTj8ktZ3iV4m9PYd/AiWlNJwg4LT27gt5z9RWUFsS8rKxV7fZAPBe1qgnj
	 CkOZxb9FsdT7/4GwWw3pWZ4QQfWdKxY0Upvd50S+dANFXkuHXVBQUP6SSCbZIQ/+2M
	 9OEhEJnCFJXg75jVjJUwoSFpdBQ3YNDDMhvyQxTmxKKQrLcFTHeRl/XP9WdUDC3rS0
	 u9OPVYONNTMNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD11DCA0FE6
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 11:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169356924875.5226.11153445318704119392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e876fcf9db2254b8a55ad4b4c9215b7b57d16f7e04648c390b1a01222de9cdec
Date: Fri, 01 Sep 2023 11:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693569248
