Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CBFEC9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD28C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687039808;
	bh=4LTdOlrXIbdFtGpuiN/l4Kzx1qs2lmwuuyUg/IJjwX8=;
	h=To:Subject:From:Date:From;
	b=ZL+E0xER37RXlZMMIOgYI/TM86D2rBfRUjx959m4b6zrW0P+VfpxDVTvuYQ62vICS
	 RlAaSDVPSJeIXlOjuGffjTGC9foRi4NQKneCSsqKNpovvNpHwHnzw1GqzIoDBQAHQz
	 wE/HkdddE7/raEKazSDj6R4WRJ4DbwO6kM2iw4pNvqY4qBxs+cVf4BYXdM9C+QvAYU
	 Sl7Ukc4YmE0OyTpMT3yWqv/bwxWkL8vo+Oyo9kBc2hfo/7wJ41fh8FckXDwJaTrkiN
	 0WQ8xSaaybztvC29b0yqBeOssiNqWvfXHcUA9xiTlTavZq6RoU62IgGG1fz8QVUDny
	 MBdkuGglcZOjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF161EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 22:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168703980868.30420.17375720685865493630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498f999e6d867131c38ce617d438c77a2eef2373adc427bcb59f4a5def0b43fb
Date: Sat, 17 Jun 2023 22:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687039808
