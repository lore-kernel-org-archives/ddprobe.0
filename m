Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9E31110
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9895CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672360287;
	bh=Egp4oHuAshYZ/p4rRYfbDDq1LAO0rrAslQczT5bkPRA=;
	h=To:Subject:From:Date:From;
	b=FSeq+hf2GYKWcy8WrIgIXsnZ/6aUJKpJQtm0CkeJiDKKiH90+PRRaYOx0mzBEU35k
	 +IlSU9Mnwn6xKgw/jY2jCrdDXOO8EKCIPJS6vmHu4j+7N9LkNAU1PXo+0SH4jWdvKl
	 jz6V7uTgvY3Y/nLS+sOSWgGHJOapIezWmOt1NBR2tjaZA4xL4BUAG/Mk8oDjqB572d
	 9eWhjRec0DP7CN0BZbiXv/efb3r0wkjdZ28neU9o0NeyAyEzjAXOyCcqJYJGlDArMj
	 PS6GbHoqyUTmq7xWK6CcX0oaJYy1mBTXN9RYWisVSYOfuS7OxpjAAyGiXg/Y95A8Gr
	 S+IIDIxqw6lJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7860DC3DA7A
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236028748.25384.4530793564306736699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f409f0847af9b108e4aa0a78f1b484eb5726d9c2d2dd32ddd335356738a1ee
Date: Fri, 30 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672360287
