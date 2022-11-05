Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6CDC1FA6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71325C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667659254;
	bh=7ETImaCKOQkGldGc1/00f8WlMQhkEin2Wv09llgq5J0=;
	h=To:Subject:From:Date:From;
	b=o+OrYIIjEwJqhxaqbQh/ofC4slhA5/QMYBtJn6Mo7XNfCEOaD5gTiV4YgrQ/CeWRQ
	 f6dtjO+dDgKtjS2FLiHr+was698FaAbjtVP+xsdiMNC027xmMpeTk+lXQmOJQ6KTSA
	 fFJHpJNnqAwWmqrxb9FNuzp7kqUSznb+9M6LsbmV6ntL6LleKoDVVymaZyJV8CTRoV
	 K1RoLdbwLBabPIKWjJkW44N/6EH5tMy/4Arj4DzQb+JRLb3f4JM9sxsZvwPNU3EFmD
	 oJ5DZbEui4+dvLkVMsnXNZ3i9JkrX54zYl8ag5DiiXUltLC1Czy/UwMaOgwT/6Qpc5
	 8wivNdkDdflwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59C88C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166765925435.13365.10258909664628322536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae852c18886c30fbde126019fa768bc810ecfb4cae3f0597703d3157d737293b
Date: Sat, 05 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667659254
