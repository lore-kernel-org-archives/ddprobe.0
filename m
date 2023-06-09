Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7454B16400
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 13:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 064B1C4339C
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 13:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686317766;
	bh=6BJKvXKZ1x0YT9ebc1TOe1uUBkK5a2hBsZ0IDtPdTI4=;
	h=To:Subject:From:Date:From;
	b=HV8hS0jXZD3Ez2TQZjUWC88uBTdpauM/OLcy/v36txfNCUIteNhZ0PvUiLR7XiS7D
	 BmzwcUBiDKOTRmra0oinZj5aHDL81AGZwFIn+858QdcwxQHZKD+3YQCBFycUZKdiNs
	 EIwynBi8lFMBJ2xkGy9oqDAGn9OKv3CguurZP9ORa/Qm5YWXb6omsEJbpLYdtcRWZA
	 ZCxsNhJZJYGKiT6ljPWfvNYlvX0dVXN3xEnUWqT8bhLwBiK5sQGRXZoEF6UVY3/Fu5
	 enDr/Np4AETDNPrE6yiYhRt9YlzBBET5HZr186eK3ftjeXR8k+b8j6Ms3X96iyaNJV
	 ESm6lTdsILuAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D552CC7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 13:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168631776585.6099.755277943662464308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88a08d4d01ff4b06194e5366c9562aa32c5e397cf14459f72377be3438ef0de
Date: Fri, 09 Jun 2023 13:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686317765
