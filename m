Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3893A63A
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 05:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CE9C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 05:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675921865;
	bh=VMk7dcJjChPInVnYXIIGWOGn8fxo/WDdqeOa3u+FQLw=;
	h=To:Subject:From:Date:From;
	b=kRbDqNwe7VRpzln4VOnuABn8EUhbWQQLLenDigmmqhW/Qb2G8/xG3vo6U3zueaEwU
	 dW+VpLuwZZWu7U/0Z4hkKoqM58q04gbK8YF3+tvSjwMB9jmTdRta2HRvp0JcxybhB+
	 SbkXXLwGjeZV2lYkLJFbRc55h4JICL3BGerBReWQ+xAdvWW8dIkk6ttKzFdYfDCCU0
	 F6ABw2q9oL5/UH7POwQMkHtBs1QDmDOcn/6BHZchCpBpAuu6hPJ9U8AA7tyaAO7AQo
	 mbeG57u/lo4ikAmLg2oZBaom4ACwHgXgsRWQUb+XrYZyBOTMJSzdJVlUiQ5oKq/cdE
	 5yFht57CpR6Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFCEC61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 05:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167592186576.23731.15589494684734199462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97b793ed3ef2d522162c239e48a7a7eeac4ca92d8889185cd771009c900dbbb
Date: Thu, 09 Feb 2023 05:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675921865
