Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28E3482C3
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvFRftJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73480C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702675096;
	bh=Y5177k31d2PmtPZltOzrmFkq4uoigvvBO4a0HWuVlMY=;
	h=To:Subject:From:Date:From;
	b=XvFRftJ9AAGzetuPDifugAdB51JmSCa3M2wUPPd9yjZ+ZdSoV/RLK+bkQXyWs15MZ
	 oC1xU0LZQi/rzlezrY6eh8iMPm5JkQHdyz3xRQl9yKFGXliCBYDJgfLW+9ZZKYZFO1
	 Pzr/0sZL2yKheTneJORnUR5P42xmnI3ZAJ842Pr1+FVbzXJQD36Lexsad+9F7LXv+M
	 MgjsqjLkZY3nEi6kmUEEYti44GXDujHpLz8RVyIm7LmUb7PKruhiOsfrmevFX0L4Yt
	 tlQjKy/vVeBaQc140lQ/mIBSqGPLQ4GNV4LOkqfgga99F7Rmo+Bl7uKMG/Ab4VjdPE
	 6oIZ7swJNJJxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C55AC46CA2
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170267509637.27442.384096776086427586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55cda0d77166a65c28e486eb2f21dc15d0e260b9cefa4053c0699b9f08fe5c06
Date: Fri, 15 Dec 2023 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702675096
