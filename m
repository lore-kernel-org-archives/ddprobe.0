Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AF46FB1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 19:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BC8C433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 19:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674676385;
	bh=C820V2wGp2IIxkQ+n0ttr1KUcAgruKrHrXRW8/R1DOM=;
	h=To:Subject:From:Date:From;
	b=FlryzHr71/0126VrJXLAbaQwrtvQBjYE+nc/XZIPvs95z4r9rIDU+4NdrTyDg9TvF
	 cg6naJA29hpxGgYFX8uj61XbD6+o11OwXj2jjTlI1t5rSyuEUt08z3Z0NWZzMNccoS
	 Wp2m1gOPYbcgkkM0x7E06n8fPgX8BwRRJGMXhPo3VAN+0+HRQM6bTqZqZ+SWnFNxkt
	 YNjTcT6cZe53mozXJz877BH2u7yLTNMQhWdJSOfTFt1UICc+P899SBnA0OMym9Tchs
	 vWx2axT5/EuLu4F64pffbbN8pqRXYPk70BFoyWIcF7mE90Lemb7t2skDhNdgoQgNPY
	 rR73lx48dZtCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAB0C54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 19:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167467638575.8555.7602088573606387830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e830b34cc4b2712917e93cfe7d60d42afd4bb281fc433c62b07e4db5413c5ce
Date: Wed, 25 Jan 2023 19:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674676385
