Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B201C2443
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734391554; cv=none; b=FecBA0ZA8qx6ZjXex/UDX3df7fvEwnMOFmQ5zxyDRlxoFbdG+fh7iH+Tlds1yjYWpREsRqf3mLXDgDY/oDP0R7IFRLnPkDLopu453QkUIkt4r7P0ee008wF5IrTNc4m1upRG6c+L8oglikyV0Qse0KaVctMYdZiPfSbPo3ISeqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734391554; c=relaxed/simple;
	bh=/121j52rwBZrlf1mSEnt+Kh4ee4OBKmH92zoABw25CA=;
	h=To:Subject:From:Message-Id:Date; b=scx5NDyg+O7UKBulTula0gy6OfLAY6GDIHnlEmFtc00xXO0s603q6GHWr4gZAYrmsp+nkeBgU9IvyvWPagnyFiF194ys39ND/oU/OY2Paqgq1D0MFL9743ch4FdbaeYk6fUdLc0G6dWPQ4O2JpHPVl7b7KUyKn/Vt+Kgwn3VN5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGesV0+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGesV0+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDE3C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734391553;
	bh=/121j52rwBZrlf1mSEnt+Kh4ee4OBKmH92zoABw25CA=;
	h=To:Subject:From:Date:From;
	b=YGesV0+zFdomZjz5CnICuG4m6SzFNjHpFk/Tw6n7rZ53HRMdN7xxdTy/v1BrGBkzF
	 15VOaDCjnlx8FTr3mD7y9iDStpG0Ei6ft1c+Sn6t/VQZgkzLIVtt+xwvxKyOX9ShnT
	 M8MZRQWGXX7IG/ST+id2KITNlgOZjWRhvSYy73AJH25cWMFfFVfwUoPO50hdLYzPiR
	 t7HiWkPPplLKEiZbZBrX/YLqXmtKZlOHraR9zcfv4GYnAYwhS7Yz0s7JgXFtFARYt7
	 /QCw1XNsbB5p+HhPEv0mhwkmoKKwOtR9ihH5XbbxDQETCi4yKU3qO0q6OzZUsvJ/SB
	 blF9E7ycLJoXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B1E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173439155359.17440.4154728885236361164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ca2a4b9ff042794b72eead44baf9ca466d9d648d5888550bb560d851915060
Date: Mon, 16 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734391553
