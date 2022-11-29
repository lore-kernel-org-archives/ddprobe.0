Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA58F3214
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFA0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669762854;
	bh=/NQ8zVbrwxx4c5bGHrciLeYodtIyQmiwZP+NCoJn9Kw=;
	h=To:Subject:From:Date:From;
	b=upcI7v0WtmJy83pYN0cXWImVCQ5zwaloPEgqCT+5nrFONszTWLsWZ/gcojTYL4x1x
	 A7Oig//tUH/v4vQanFBhqLFmOYG0gxqF9aX+O1cKjhO+8t9xisa55n3jinqvTtnNln
	 BSNSwSyxChQJcVmNw/un9FO3/HVauCujdZ//i3CQe4m0ntL/WxPCO2c6i5tSJQpjWE
	 KWgDSFPhEvjhITo+eUy5xQWTnYai3VZcZaLf0BXJt97UpqSgqWzXSVzwgAEOznh6EG
	 twCiO+n+/mB1pHBZG+X0nF3PSfL5H/N5dj3TXGhvVSIqwF6TNI3a5RQ3C3eLeg/Lym
	 z/Gvk+2cjdewA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4D0C433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166976285437.14509.14587771434909733474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef62cdf15159c969c6da3f99dcec3d3b78f7f2e63fa7f18eebac479af28b14f4
Date: Tue, 29 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669762854
