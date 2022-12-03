Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC268291C
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DCC6C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670085054;
	bh=maX1emWI1HD88vClHzh5YRRONcrDpbW4fDZ9g5ZZ6Jk=;
	h=To:Subject:From:Date:From;
	b=P/U5tbZ2XmBZOa6NTcLul001ca7jDomzkLvzsdSNRjWvOE3Mji28N0o/3qUcJTtI2
	 nMJx45nTtkKHc8fyrB6orIXvPXyW2itGnd53YaL1VJLRkWQ1m0muzW/s/A4sGM1oo7
	 Ys0PSHD1mlexWuftSmU34uz/ejuxFqgiFXrMwYyUhw/i7mZeTr9cRM+kYYJsRg51dd
	 gmbd56+R/PG/L4CIigNUabSlSH+gDjzQTBCgqHfQJzkKFJDgsirWJi/9wQA+bMpaD8
	 7sMC0nI1Ot7VNns6h93p1wvJq1X32tYPTEc7IVw5rzCjtmgTbIwBpBcEZfixUFcu2e
	 Asr8rG7AL5S7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54350C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167008505431.23959.4069000698090562737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0bbfdd9bccdc54dad158e0fa8a5511d291b96a4877d711b135e428e2e1aba96
Date: Sat, 03 Dec 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670085054
