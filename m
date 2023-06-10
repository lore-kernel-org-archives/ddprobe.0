Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A2FE137B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB8FCC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686360486;
	bh=27Co/NE4vk8vTAgLX/nN7alYZlT9b8O2VDLXoTzCS/U=;
	h=To:Subject:From:Date:From;
	b=jkI1SI6usFy4m9q5Xfpk6AHxuIot/r42RmxOUTC6Xciqfspal0RAOt0W6gVqB+J3f
	 /ncKpnUaH5hw8lcHwoTw5d9dddbRjnl/5MlNzrFy/Vyw1RDXIyoATat6v/PiIdRIPn
	 JeL3R18dVlEH3585hAYWAks5Gw2a8F28RUEpAnwTTI6WA26TrSdt+TEfK7++cI+5ax
	 qEJmE0auCZ311a9FtWR1ufnvvb6+NhLZnBDCjE7qaKcspSR51lbR8fcEFoCFZwS6SB
	 +ShPOEeu1Kk31cK0KfK1wKN9FiovDlbZ53Q4EudYed6y5cMg+neRMx+HaHLXfhDaNY
	 fzESyS4neNdwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A2EC7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168636048577.24213.4872363245189034298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b46ff03c3da5550e7a894e83258cf09388aa10417f93fe058b57a67ce8d637
Date: Sat, 10 Jun 2023 01:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686360485
