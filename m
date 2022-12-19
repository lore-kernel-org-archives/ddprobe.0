Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDD97E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AE86C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671418887;
	bh=mBIHbNVE6UTAh29J7pyRhN72cmo30hi+fNR5ZAtIBQ0=;
	h=To:Subject:From:Date:From;
	b=VP8bPSW5Ooa5yOoUisA3AFn1Lf5UKspOrWWlD0aE8ExjR8X9gzFVNgQ/AlRdOIazz
	 6IRnKfqa8Zj0VQ3CJkqJe0Q9Ue88b3rbQI5uPgTEQpGfNnT8klNXtPUw5Vhu/sD/dC
	 DTYzhn/C0xbjWZ0Vxkir56MYGZxlSy/N83QAS7LbBaiwWITgARq0OqJ8GnmkGljOhK
	 y0f9mn/nxRZJoOeRE0FZfawOqBFSUikvFWxolHH6RraJMBIsM+OnPHkF1X9m3MD99b
	 EoS14+G7b/6pbJMl/Id5xJ4hMehYA0GLJGanyWWNoTISnT35+qBcpPN1KKlf9BRzWZ
	 Rzz9SQneQzKEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B03C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167141888740.10233.6966376225015507539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e40d156b69d8bafe98f5c1df000ec408905d99399784eef1f595d355cde2dc5
Date: Mon, 19 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671418887
