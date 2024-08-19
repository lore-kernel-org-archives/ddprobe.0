Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A50F947A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724034954; cv=none; b=FnbMVOOH05zpdcgPNgpP5rpggQNeq2i+4xseZlC/F82m0uGKMdaJ3xftBJP0xrNANi5v7HcYEsLxvgE3/FgnKbqMUygyS364xtkXt1f/aSO53oJt8ENOW48TXAlmzuvqQE3TXXTmnQu+Rnm+VeUifCi2h4XJ51OQDR3PASntf7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724034954; c=relaxed/simple;
	bh=3MgDe6mUiyzHiiaSsLSwuKT5pn56AKc9mKZLYBBrKkc=;
	h=To:Subject:From:Message-Id:Date; b=OrYy5p6W5Ru/7pUnj4cEuFNfEs34A3/jPOYyA/pAPFPkKgIjZIJ6PbomyuWZHg3nnZJkMK6YKKEN3gVeyCyX6At01HhQJSSf1X/jS00hsKwO4Zm9/qY2ErmNDjJ+egJ/rbyuhULNBgCB7LsvxDAw21T9EX85trDiRwe4cghDSHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Za0T4P/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Za0T4P/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1707C32786
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724034953;
	bh=3MgDe6mUiyzHiiaSsLSwuKT5pn56AKc9mKZLYBBrKkc=;
	h=To:Subject:From:Date:From;
	b=Za0T4P/E9bsDfJkmN+pM/VIB+Y1FN8HcMrnzdOrNQNrbleDOfbKRki3fyzoeQ2jxq
	 C4CqKJlNi7UrkIfLTnK6mrSEZ1c2H29PKLJ1+R4UHo+XlluU+fxwwZYq3y2X5kZLey
	 SXsXXvlrL9Ysj//zV4zFG3OOa4y4+lLJyH4oPHy0a75XklwljLof5gWD8iYwVUAD6O
	 o5vF+p7XmK9v19p/3YD1e+EeYIcDyQbGUbaxnHW5OWm4WPc2u882W8nNwwbp8OUixd
	 GMDzKOWD+lkbGgq+iMLc7s6oZc7H1JgSy22TwP9L0FfeqXWt6z+n90e0eRw7+UXLzI
	 ZN7AAY1sm/ELQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E960C52D7C
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172403495363.20346.9809159789147431052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbe08d6652812d49461169c39422645bd7dae17611b4aefd62c595ca781cbf6
Date: Mon, 19 Aug 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724034953
