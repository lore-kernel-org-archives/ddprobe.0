Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7258BF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87E47C43470
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670443254;
	bh=JmLanynuovay3/Bh/KT5ZBgaAzU9+m5jsL8CcbPUC0Q=;
	h=To:Subject:From:Date:From;
	b=GbncRs90yPeLb5tjieL/msJVL3FvZznW9aIUy5+FYuqDicSPORqf4dxO0x84Nk4eB
	 n3vFnMMkz/WHyZt3oJNeLsEr+JagtfhV/SqKnge/2outb59fTqNnFQ1q3l6D0onn08
	 lmIavRximCrIzebHSm6kgvrkC74GnKlUAxjPFNz4usYQvt9NwNWB2fqiDR88lVKlOQ
	 kf/tl8lXVbC0qtXzCsjuMzW3xZ2tGeHn0GxUBoD9330zJggOJVNc7jYC2oK2lYn4n0
	 7j6VtBDv3WcpM6F1EO0ZA/xHSHh7rX6/Uyg0LeawSUH5HK2q9+6x/fNEe/cQ2XLXLW
	 WwCZtuL7PjDqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C8EC4708D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167044325438.9939.4827864435827974380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62a687ac4a78576059c6b446a8c7d736d694502d531689db9ae05b07b28821e
Date: Wed, 07 Dec 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670443254
