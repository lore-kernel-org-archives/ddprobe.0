Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27394171B4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6Bl2LNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C95AC433C8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704253696;
	bh=RbKdG1huNc3H4PdrWoUcT+GtADonXJAQbg4R89OI5jU=;
	h=To:Subject:From:Date:From;
	b=d6Bl2LNCzJE3Zj7jiCQ8tp0ZQi2AtbS7rDea0qanOr7ExqVrWQYNNUZWUUIROGx9f
	 Sw4CH5MAJlrqnLF0gSZiVeUNfe/deko2FpmRScyMrPJHyHXoFHL9/bSm9VbVxwL6Kj
	 WjRJHzcuekdnKi2iJ3WFmAKs7f7BLkJSVVo/C5JizjJUAqHKcpThsID0O5OwisPqua
	 0QEE+/Pd2h456fOyaAdRkov8USuGM1yxgg8tLMGkFr9WtWdx/jOoEz2rngMY2NwWDJ
	 PR9shjdlgyOFgA1h2I9EmKE2Pq6SMeO6mFBDm5Vhjpk5ab0k1IoVoZh3VmlZAMy0bk
	 /75+O8sYfVTMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DADAC3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170425369642.6784.12060401607204671132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12a249ccf2d4e58150bb628544514118c2176960c1708104c3137a0c49c7814
Date: Wed, 03 Jan 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704253696
