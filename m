Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665E0136F
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 04:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC8BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 04:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693371248;
	bh=wMTFm3RGjbGUBAajrAkplWiIEP1mXwUvuzCHgfWGAFQ=;
	h=To:Subject:From:Date:From;
	b=Q9cmAvTRzxXfcL5x34DqoQaaOeEDXp7TDkKO7qXXfzu1iarB4qtSxYREsYPleE0of
	 KyzYPqS5WUD4TybStXDyF1MrbjZ5uy9kxWKgdo3rXuLZV4yW7fYlpV6G3h+ZnLA3G0
	 YIC2qa7yOW6X2gOpgffjFuND7noh3Yj7RRDUOC38+xHQ3IqRV0xMKE2RTe4LXXjisy
	 NpCZWNnyHk4ZlMvhte/zN+2pUKfAx0cT0c2U7MMUFR7unGZYV7JuZBy7v5NLfV3/4R
	 XtVTihtwPwLcpftWHC0/9B6G9VZ+bwi+XE0E5EJtoLRYGVjekOybZaZWMyWODi9nQ/
	 gFsPv0JkxLknA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C88C6FA8F
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 04:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169337124875.16340.15839042720610246817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7412102db313f70ae154ba6dcfc8da9cdf742ece044d92f593ed5883d5f564ce
Date: Wed, 30 Aug 2023 04:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693371248
