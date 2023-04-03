Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D898F6E
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 19:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC83FC433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 19:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680551826;
	bh=gmOirZZZHEe7s3o4nsT3uUit7apT4ic7S4LrGAo63yE=;
	h=To:Subject:From:Date:From;
	b=iytogAhayVtN6gy7yyq2MGjz6IeAQ3PebJpl1tle5xGAnIePeQWFKpg/mLZNq0b+l
	 pU5MWgDRd66I8BtnXMbUdNsQ1irpWTuhpOwP3Y7WXN0WB6t6t3mqWMryzLgsZn8QBi
	 K+twU4U7CfCrvcFFFEqsTluN0+i9lr0R25JybsH8vhWm+V92R80f36ug+/kjuU6Rg1
	 FsPGd0f9z8ZIvMUvxdJn5XIV1WJX0NJIWy6r4tBWeEsn3Oxpg+9wnAFIvmP3N+LP/O
	 xI9coGR3+qsRRSElby/LZJ0/NtJjJBNYPlpMnerSI6Kc8syy0C1UsQ1wd3vxFBhOJk
	 esv1HtrU6Sg9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF4E1C76188
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 19:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168055182583.29463.9949958166222010030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b6bd87088f13d9c5483f83e8385bf231b057303cd5b94f535b63a9f64c3684f
Date: Mon, 03 Apr 2023 19:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680551825
