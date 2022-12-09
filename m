Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF9D816
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E4C6C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670568087;
	bh=4Ujymje8S/rl6q0rsIvSDbYP8Sglpp67bE6GeN6/yrU=;
	h=To:Subject:From:Date:From;
	b=PPazylF6FDuj23M6F+fC3eJTME3GH4LVFCupxLi6Ea7IZZEKzwJFA0zJd7NnT5Ksb
	 MRfwO+zuztJNUw8oVpzKMv2Hgm24ZuNQHyrLSjXx5ePeb0j49zYL4HNNVz4nzEX+1U
	 bmvOWoWRemBKQkA+yW1OIQs53uDUJvLwhR3tj11Sv/7mCpXvKIa7qvB4T51qf3ui/F
	 PmpWxMO55hdxrZwfKuoshBwAMAPaFgiz9mc5gN0t72lr/Sah9WmDuVDPwvw1w/4P3m
	 BZo/fyFyGrP3Z91DWCE0NAM8oJkKUEvFYvf4IUFrJLb/RXFOM7uNM0ONmLMRuTsjJo
	 lCtrZOErY63iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 710BCC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167056808743.10596.16373625854334871375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d638091a0168da58f094b5688c53624487ef8c2f1c47f176628ed2058ed886
Date: Fri, 09 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670568087
