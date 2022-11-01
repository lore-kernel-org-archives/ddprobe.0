Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79FA7E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E2AEC433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667327454;
	bh=N7l8KC2C665c+d2g/zlHkAxQ81ToKzk0XjqqQLizxMU=;
	h=To:Subject:From:Date:From;
	b=U+ujICUgQfHvnNp/0Vw9JX+OMf5kzB0DQASRse4peFeNWJFaLTs6HQiFqi+PZM1fT
	 bfpFwnm9I58gylrzyfMf/56vgxfl/5C2PG3uR1Jl2UCGoumgrT8fXKrIaMMU2wBUKU
	 oZPX/Kf6PKUx+F5PSfKZYY1doqpke3U4dLJFCtdHYLQl60dhLpWYJgZbHLoDSgr9bh
	 nyTMpcTWAh9mfhHZxRWJMXYep9NBHdb3WBCiXpguT8ZTyvOmEF3ZpbNm6UESoHGWQ1
	 VzCWopkROFbZhZKK2TKQ58Oxg5A5Uc66sf1zzEFWlCpnK4TlfvIIIq+plOlJewQ1yk
	 IyfdcXvjw+xZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57960C4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166732745434.28532.12519456103402111706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1277ca6917eae915ee42612f2e3c5de80db5a5a32062b1a15d1b35222e14bdc
Date: Tue, 01 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667327454
