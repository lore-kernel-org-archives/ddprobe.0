Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C4D1117
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 10:00:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 734DBC433D7
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669111255;
	bh=d7QNYDcDvqs2YZvHItRI5kkJSLqKtZ46VE3qQZEH9os=;
	h=To:Subject:From:Date:From;
	b=TP0kcJMR6hvJYu+3g5kol8FXPQIDPeJBY/5vYoxmzR+DieaIVzm/Sz7t3p4bMdLtB
	 29bOwSV5LCvYR7ykqhyrxTmb6oqm63ngX85hFcT5D5hH9uc2j/iY3nip4tvAHAMOXk
	 WGzHoYqjyiBVAsJi3Ds2hkvuUsGreGpLyGAPkBdvPahcPkCmB6vu09UCnLgZlvR/DW
	 JLnFgbLs68X4pShYDybQeBONQfgzw50H27bcVhxmBUUmR4eAck/bS1dfI5B7DV6Ti9
	 MOFElMgIZpb8XC7a8slOy6rThqepnrVL9EQBNVHWtRjWcic6cuqBhQ7I7xnLVz03E0
	 UQMBE1eKcF06w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B332C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166911125436.26524.4222492408314043618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a597bfc701208612bd35630b918bb1adef82e344bdba1f0279ec4272ecb90b31
Date: Tue, 22 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669111254
