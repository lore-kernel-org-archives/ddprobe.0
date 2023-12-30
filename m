Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277EC1864
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVC3eVZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FC71C433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703918296;
	bh=wIy/FVPs0IpQU0wDvw+Y4rM1Q5aAvSWUiaYR+/6VtS0=;
	h=To:Subject:From:Date:From;
	b=AVC3eVZhZmXHAW/QyxZOfZBi9bU1BYioezvYrp8J9PmOSifRKINQMxXnVFseeknpI
	 ipCReXlnL46k5cYbB759RUSB6jCTcylr7VwEVcUnBF3YG5WYe+zwRhGRvgYsCRipy/
	 LKkePveljgNTj7hov82EHB16vvmsO3LT2cqUcFM4HDXYzRsjjhKmKFRHTifCftFvYM
	 zmI7PeOTH9m71OZd+c49ncQBclgln+klUDcEcjYP5aq7TbWT8wTZuhbeK8Q+xytzE6
	 kddjyg+AQHCdDZxueXI7+3fVDJCBNvb/cf+Fvkas/oVUMHut8ZoIiPzptWcJKJfs9w
	 B8vtx04VJsUCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73C5DC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170391829641.20731.16233340638098142375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174d2c09ed2611f459924042a4043fb11210d1503a0513d8fd3618045802b86f
Date: Sat, 30 Dec 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703918296
