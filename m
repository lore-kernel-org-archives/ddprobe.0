Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F2C847B
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 18:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDA6FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 18:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682705106;
	bh=Qt3RV9O/dLERzAIYIgPoLGzc0EnpLPF97K88qUKDX4k=;
	h=To:Subject:From:Date:From;
	b=RqW7ytTyHznm+yHxHZYI8eUPoCe8YJt9g/TTRfmr/NdI7wsdJUbfe3qlSsvc79UZ2
	 VVQpZ/V9kmZ9Ys7aPBtWLzrXzQk/g+bnZ895pzMhaCSRz8XjMXdHjZXpMGidRjen0I
	 2u9G5C3zkNBk41+bsS1fb+3NG0nWThVW9IykNKg5z2/ilhOW98WXhnzLUPHcdcS/HZ
	 jind1lokTnTGNxOLjllb8xxCtDAr7mAUkROBTqUnP/wZrI6kNsM1FRH14GUr5CWDKu
	 vPzl2Ajvpxgi6KBUOzhePhc7Ew3+ol7JS/6tNNOW+sCFDXmafwYl56ZM/HlZWV81t0
	 MBqKjgvKRPGUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2208C77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 18:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168270510585.20910.5850429292793232989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 416871d168a9ff5e8c5272c784164cd70139b6b5ed937a19d73e9ca1691888bb
Date: Fri, 28 Apr 2023 18:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682705105
