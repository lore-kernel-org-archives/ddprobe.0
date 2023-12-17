Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055BD12B7C
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtnmMVEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8553FC433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702810696;
	bh=HIte+bNwHgqBTsNfZ/bcZNmCPjpo8jddXzw+iJUdHZQ=;
	h=To:Subject:From:Date:From;
	b=AtnmMVEymaxNaAZTnwNTpUE+V6uV5qYf+CuRaCvu2WaCu6loO1qQOgLnXwBN6bvIu
	 XB9MITt/8is2alDcAdEvsRoqnkRpUWRshfL3lElPZ9atCuSOCNAd7ojalqJFzxXHeN
	 FS9xqqYRIuz8Yzio9hiZ+LXTj16Cqgfm9EGZxkluk7AnejO4qCXciqp7USSzcbCSNh
	 KBag2IJdGuiT5Ht/T/rt3yVUsmMDs+3z9K5HJ5vtQHZ4NQEeYt3np2J53LVBvkNbhY
	 i9YUeAF+xt09NguLb70w/bZP8WToy3RBt0hDa5teGO+azkna10NLIPBeX90pmZUPIr
	 c+97kKVuKH2Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66694C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170281069638.2612.5463633076611495053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f089168464a02cec49806b45ad02f525a49c551cf7473747278e69b021c1b02a
Date: Sun, 17 Dec 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702810696
