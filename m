Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1539E23A0
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTOoPT8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B2C9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703919496;
	bh=qjL4YrVNvnhJ/oA1cleMmPUD6XGNfItumW2eomJYck4=;
	h=To:Subject:From:Date:From;
	b=eTOoPT8qWqrtj6kQQ5gtKqxlAbCpTbtbtAMNO8dlIOUhB/qNapqkTWbhRPRYWu0Y8
	 rrNSllXj8lMno1yUDDmGCmUjW521cYl+7qJQ1WwZhqO0YK8SmNL4RNWv1iFUfb024r
	 mzrNWOjsXsmtsu8rrpw8Ug/E7ycYDmmIPtgb7MClWNRZVGWP2+nGZLfo7T3n/I8R6W
	 CuxHOBxYaRkfluaxMa4fzvhDDClTfaLSMgn+6W80+arzXbvwc5/Isg5ck8y7lfu9e+
	 7Xuxa3K7DqUKiB4mTRgfEtzd4X38rHrIUV+C3bV3yyu1dT2878F7W0T+HdM7dg7LtH
	 Q4//78guxhw+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B738C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170391949639.16393.17011612889805940917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbad7be457980cfd5ac5d97ca9525063494b3bd3ace8ed0bc081d9fb4149a9fa
Date: Sat, 30 Dec 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703919496
