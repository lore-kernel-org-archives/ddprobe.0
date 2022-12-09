Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75CC6D24
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790ACC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670613087;
	bh=ZFJnhMSZFZUEmngIRR8NeuhxBXSeUEBMU4pBYmzTXYY=;
	h=To:Subject:From:Date:From;
	b=cHsWReM8kRXXh/vP8A1YumjXms9HGzuVAsr3jHoeycnPgCwzX5VtSUOckPm7EPAZL
	 NiRgDSoawTxxF6RqJYNW7fl9kitcxLWKPxcKNDMDVs5fx7jixuCcmuo3vupjfSqdWm
	 7LdaDLJyaRRpuGe2BA2ZVVAFZ0dofn3b8o2Ad/d/5owj7fdRO11WETcImPS5dIy+XX
	 V0IzN7joBcTtpWOOsE6+uMz53ipXf7L+2rh9OVJ8R0yt0wgEQM0TNYcF8cOgcQheIw
	 KkEieots9C6P6R0MPyYuqA5qGa40gYR1YEVOPpnMFDQE6UZipOq6JT+myF39nKCM8K
	 +FErYG8T+u6Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F721C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061308738.10414.332793990619839662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f2427a95136cd9c2200c8d982d7fd4f6b70bfaf81ffaba234008fb6e440d98
Date: Fri, 09 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670613087
