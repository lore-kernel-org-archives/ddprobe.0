Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4071D6FBF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 20:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD8BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 20:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684269785;
	bh=jH2AEF0JV5dWOBo6FeZm6jaGirToQooiw7BcJguot6A=;
	h=To:Subject:From:Date:From;
	b=gLPw9ilyjM6jiOTb24Hs94WXJWhzPuNms0OUf1iCWvEj1DtdGI0qu0gw3tLY35h49
	 nBOozMJBN1qw5XH1UGoMi+aWe8mdGhWfBSIDzaDZaKKxeYdP7rc65GjU4LDfgkBWBQ
	 NMpZEfhwfg/71YSY1AirV+mej7s1+13HHL+FjZytpPGS2ol7FmvN0gNhYzb4PGka/o
	 vDs7KYL8za7Wj3/CTK7NNXiVVOJO1T5Tgfj+sAin99dcB05bQFzYPGh1HImRKubB9B
	 2M10t9wdXe0N82ZZpcEm+S6Kdbgnbh1PJvmkkSEOgoXd+0QpMDP0+ZNiHDw2WTtgxb
	 FyrtCn3JqEM9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEF0C77B7A
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 20:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168426978575.12831.5176156816019672756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2bbfc5c81c234a885e917db7496d3ee05ee96bd08852b08ee0b000c25182b9
Date: Tue, 16 May 2023 20:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684269785
