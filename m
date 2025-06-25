Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDE7264FB3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750869594; cv=none; b=asQXc1BILqIFjHOWA6xXgn+5xtH4D0PNRV/vlCbkSWxfHTMhFQ5eAC3z+ud3Z3LQ+fD9Wg/DSc2a9zC7CIIsy21OynWHPR/RTCp5nC8MV9D3IlmGj3jlBOzWputjXlWrE62uw/g4FHxboUMnbP1a73JprvvDh3zm7Reyd9Zbtww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750869594; c=relaxed/simple;
	bh=ElpP4GofT3uxmU+U00Xks6jtrBCiNJLAKMah5Tb6Uz8=;
	h=To:Subject:From:Message-Id:Date; b=soxQPfhMBxTJnBJzw2GiIO7QPowo5NGQ3WUH+nACc2ZONRjbYKmh0TVHNYeEHjjSh+IPCHmJxCgZ9paTfm2DchiQX0DCYfBd3L1WSCJ7BDl7EuCTlwIAJCj6rd1ObFwlxqDexIXVwXCH5Reu6ahDWZxz1/mEQnrBZLTr50+DK/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FA2oDnCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FA2oDnCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B85C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750869593;
	bh=ElpP4GofT3uxmU+U00Xks6jtrBCiNJLAKMah5Tb6Uz8=;
	h=To:Subject:From:Date:From;
	b=FA2oDnCcurijKFhV3vn/h9YGjyOFNS8g0t81fZAaq4eheGWosiyUjcl+UDnQsqHFg
	 KW4/VktAOn9dUJd1h4VxzzWicrw33lhSuoDsY1mcq1SEEWWXJDhfyS+icWb8lsIErI
	 Db/jY/vzX8ncrFEZHUpkolmHlu3c5Zunw2RvQpiXOZtlGdHtjz8ctoAwg3GzIXNcmG
	 TS2OZoscizJSA0Haex52WscUwSIHhGB41cSrYzpijwvHZ1g/tO68g3QFKRAtdcJdJ4
	 CsyyUPjvervDPwEWPSDdp19XkQGOKOnFCPYTTmAxbCQY9r2LVzhOTs0+h9UJyAqbro
	 Pq5VoHGK9cEkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD0C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086959357.29603.12470198121485955836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d424674f3839465eb200fc4b8c1e7b2898222968f1956de733d0dde1528bb6fa
Date: Wed, 25 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750869593
