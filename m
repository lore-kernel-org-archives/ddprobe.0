Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1F68F42
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E36EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671319287;
	bh=c/m589AiU1RBW52sMoXoYw+Gjj+/P6TLjoH7RXlUssY=;
	h=To:Subject:From:Date:From;
	b=W4OeFpQIynQnjN0RW24zlsX184EmYIR/zUcVebgF7ELWjl7p8cQimx0hZirbD62T1
	 g76CxYHfTZVYHSsaT9NQZK/5agswJZJWeyVX6FI0p1Wig8ifASzf4GG7EUa4P+NnmI
	 fvttjVd1ZFJjuoEwMFCpG/ptm1i51PppItbnZ0t7+5aVwUHoZVYg9SV+XmO7C78vWX
	 Vd/ovScD5gAVOG2883zWN7GjFUaPphQHmdyJRtQQwRuZORMBRniJxXK1en1oDNpFTb
	 k2+bFUsjAYqyAYPCMH3+jQMQO5c0ZFbA+cgpRtKqb2WTkR4sry9qmTAfuiNovEkoBO
	 DeWaFagW2uG2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D268C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167131928746.11254.3203986455194811543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aea9d8def6e20d7d37961ca0be3c26cb09661b5fd3a0cd582a5cddd9aaab73b
Date: Sat, 17 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671319287
