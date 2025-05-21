Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D1D21CC51
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747864794; cv=none; b=B+p4H5tlAhgCKEFrQEY3iXtTkmSYOnyvpVpAF+Yy1KCYbhzxxrUSVq5m4lZnwu4CRLkvJAOt3qCTv0I9NMpwJQlD6jDC8zug1rde6w9ztdH6hh9eTKiT6V+iRRUmS4TJSk5xuw4aDQJGS/vNaj9JM9Z2Lo6jqTSN7S8VwVEFrnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747864794; c=relaxed/simple;
	bh=nzgkrLbikPjkvsAlsasXzdmon4HjWyRqrj3c1VPrT/Y=;
	h=To:Subject:From:Message-Id:Date; b=WdC1NTkNO7o1eh2kfdrfNhAvdQXKMLTzw/UMdAd6cyiudQ7c23GzCnkuB2XswmXqLWknBtxDWI8K0pYKDdDYK4VmgkOk1flhCqjAZyWGV9bpr70KoJsLz9v0fbuB4XxlFNfIhnbSbEAoKee0UP0rm3bXV09ev16S0cXif9Nja7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKlER6S7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKlER6S7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38A3C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747864793;
	bh=nzgkrLbikPjkvsAlsasXzdmon4HjWyRqrj3c1VPrT/Y=;
	h=To:Subject:From:Date:From;
	b=IKlER6S71LfEsd8eMJxCrfMjkahsDErmrTYGnYQlmbyZpIX3SRc/B4hY9z6Hyr3ii
	 cjxEt0GfRBCR6rloC6+W8KOQgfBkU8Ea+w0URc5A19FGREIAK03HvLV/B7EmHJaXT6
	 6g1oQD+8yRuG9KtxGu88Ik4YVYYEXNH7QWUcwhxi8O/YXTLrHwiQb/bit+J6GakMW5
	 eCip7vE0Km+5zk+V9X4aW89N9NzMEujj9ce+Xhgzzgd9JKnmkcr9eDwAfzQf8n/mlY
	 SZteRgjh31JuwU+03dXftJQMRjWE0DWKo3+bA1Je5fB0ZA7tjKU5NFNJPTyuzuE0U7
	 xqGRiZ/NY+EkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1DAC54E90
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786479357.3573.17760069291887006975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b629538f47df0cfa0095c4a58cb5188103a28e350a90b39f99c1fd4792dff4d0
Date: Wed, 21 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747864793
