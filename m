Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFE41C01
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790F8C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662846653;
	bh=eYdEm67aPxJmVul4QDrhrYii+jqqcLRu0NzNh+mUFaA=;
	h=To:Subject:From:Date:From;
	b=VfFu2+YMG4xYgqSpHo3oGNyqEsCggpSKvQ12Z8/1skfo8dUDmuqwz0ESwpMOBb5+4
	 9q+TGlPwx5Jk/CaWMdYsZlonMjUgEO/0D6S8ytTQU4AOk9Sw+gJOhDXzGMS/ht2uRs
	 9kGetHW9mt5oXMXLMrWpyv+lk8Z3dgrekxFw+p2Dfp+p+P22fPbKcjNvbpINSN4zzh
	 S1VIJLuH38Nu4U02/HKxrj/3rBL0X3Io8xqDlJBl9JwNnVlkrtEq33/7k81uqnoVyV
	 tVs99JuyWUgEizIs3xw4IiHl8iUGkh1ad1BV/2LmJj1luGr19SEh/mr5HywND2fa0J
	 IKnMHeGxkHQLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C6CEC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166284665334.12299.16274686751691887807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f70e4d4a3b09542053cbd99e75123ef8008be9f24781fe28e3c2edff53ae5e
Date: Sat, 10 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662846653
